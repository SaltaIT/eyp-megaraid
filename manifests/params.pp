class megaraid::params {

  $basedir_default='/opt/MegaRAID/MegaCli'

  case $::osfamily
  {
    'redhat':
    {
      case $::operatingsystemrelease
      {
        /^[5-7].*/:
        {
        }
        default: { fail('Unsupported RHEL/CentOS version!')  }
      }
    }
    'Debian':
    {
      fail('untested')
    }
    default: { fail('Unsupported OS!')  }
  }

}
