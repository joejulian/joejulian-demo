require 'spec_helper'

describe 'demo' do

  let :facts do {
    'operatingsystemrelease' => '6.4', 
    'fqdn' => 'myserver.domain.dom',
    'osfamily' => 'RedHat',
    'concat_basedir' => 'spec/fixtures'
  } end
  it do
    should contain_class('openssh::server').with_source(
      'puppet:///modules/demo/noroot_sshd_config'
    )
    should contain_class('apache')
  end
end
