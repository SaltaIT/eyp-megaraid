require 'spec_helper'
describe 'megaraid' do

  context 'CentOS 5 i386' do

    let (:params) { { 'basedir' => '/opt/MegaRAID/MegaCli' } }

    let :facts do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '5.3',
      :hardwaremodel => 'i386',
    }
    end

    it { should contain_class('megaraid') }

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0755',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0700',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so').with({
      'ensure' => '/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0',
    })}
  end

  context 'CentOS 5 x86_64' do

    let (:params) { { 'basedir' => '/opt/MegaRAID/MegaCli' } }

    let :facts do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '5.3',
      :hardwaremodel => 'x86_64',
    }
    end

    it { should contain_class('megaraid') }

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli64').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0755',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli').with({
      'ensure' => '/opt/MegaRAID/MegaCli/MegaCli64',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0700',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so').with({
      'ensure' => '/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0',
    })}
  end

  context 'CentOS 6 i386' do

    let (:params) { { 'basedir' => '/opt/MegaRAID/MegaCli' } }

    let :facts do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '6.3',
      :hardwaremodel => 'i386',
    }
    end

    it { should contain_class('megaraid') }

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0755',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0700',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so').with({
      'ensure' => '/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0',
    })}
  end

  context 'CentOS 6 x86_64' do

    let (:params) { { 'basedir' => '/opt/MegaRAID/MegaCli' } }

    let :facts do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '6.3',
      :hardwaremodel => 'x86_64',
    }
    end

    it { should contain_class('megaraid') }

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli64').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0755',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli').with({
      'ensure' => '/opt/MegaRAID/MegaCli/MegaCli64',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0700',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so').with({
      'ensure' => '/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0',
    })}
  end

  context 'CentOS 7 i386' do

    let (:params) { { 'basedir' => '/opt/MegaRAID/MegaCli' } }

    let :facts do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '7.3',
      :hardwaremodel => 'i386',
    }
    end

    it { should contain_class('megaraid') }

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0755',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0700',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so').with({
      'ensure' => '/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0',
    })}
  end

  context 'CentOS 7 x86_64' do

    let (:params) { { 'basedir' => '/opt/MegaRAID/MegaCli' } }

    let :facts do
    {
      :osfamily => 'RedHat',
      :operatingsystem => 'CentOS',
      :operatingsystemrelease => '7.3',
      :hardwaremodel => 'x86_64',
    }
    end

    it { should contain_class('megaraid') }

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli64').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0755',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/MegaCli').with({
      'ensure' => '/opt/MegaRAID/MegaCli/MegaCli64',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0700',
    })}

    it { should contain_file('/opt/MegaRAID/MegaCli/libstorelibir-2.so').with({
      'ensure' => '/opt/MegaRAID/MegaCli/libstorelibir-2.so.14.07-0',
    })}
  end

  context 'unsupported OS' do
    let :facts do
    {
            :osfamily => 'SOFriki',
    }
    end

    it {
      expect { should raise_error(Puppet::Error) }
    }
  end

  context 'Debian is currently unsupported - not tested' do
    let :facts do
    {
      :osfamily => 'Debian',
    }
    end

    it {
      expect { should raise_error(Puppet::Error) }
    }
  end

end
