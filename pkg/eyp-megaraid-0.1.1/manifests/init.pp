# == Class: megaraid
#
class megaraid(
                $basedir=$megaraid::params::basedir_default
              )  inherits megaraid::params{

  Exec {
    path => '/usr/sbin:/usr/bin:/sbin:/bin',
  }

  exec { "mkdir megaraid ${basedir}":
    command => "mkdir -p ${basedir}",
    creates => $basedir,
  }

# /opt/MegaRAID/MegaCli/MegaCli
# /opt/MegaRAID/MegaCli/MegaCli64
# /opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0

# lrwxrwxrwx 1 root sfcb      48 Jan 26 10:24 libstorelibir-2.so -> /opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0
# -rwx------ 1 root root  540512 Dec 16  2013 libstorelibir-2.so.14.07-0
# -rwxr-xr-x 1 root root 2720320 Dec 16  2013 MegaCli64

  file { "${basedir}/libstorelibir-2.so.14.07-0":
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0700',
    source  => "puppet:///modules/${module_name}/libstorelibir-2.so.14.07-0",
    require => Exec["mkdir megaraid ${basedir}"],
  }

  file { "${basedir}/libstorelibir-2.so":
    ensure  => "${basedir}/libstorelibir-2.so.14.07-0",
    require => File["${basedir}/libstorelibir-2.so.14.07-0"],
  }

  case $::hardwaremodel
  {
    'x86_64':
    {
      file { "${basedir}/MegaCli64":
        ensure  => 'present',
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        source  => "puppet:///modules/${module_name}/MegaCli64",
        require => File[
                        [
                            "${basedir}/libstorelibir-2.so.14.07-0",
                            "${basedir}/libstorelibir-2.so"
                        ]
                      ],
      }

      file { "${basedir}/MegaCli":
        ensure  => "${basedir}/MegaCli64",
        require => File["${basedir}/MegaCli64"],
      }

    }
    /^i[36]86$/:
    {
      file { "${basedir}/MegaCli":
        ensure  => 'present',
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        source  => "puppet:///modules/${module_name}/MegaCli",
        require => File[
                        [
                            "${basedir}/libstorelibir-2.so.14.07-0",
                            "${basedir}/libstorelibir-2.so"
                        ]
                      ],
      }
    }
    default:
    {
      fail("unsupported hardwaremodel: ${::hardwaremodel}")
    }
  }


}
