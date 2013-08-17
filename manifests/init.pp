# == Class: demo
#
# This module is used for a demonstration role
#
# This module is a wrapper which defines system-wide defaults to
# the apache and openssh modules whith sshd disabling root login
#
# openssh server defaults are managed by whole-file configurations
# as a security measure.
#
# === Examples
#
#  class { demo: }
#
# === Authors
#
# Joe Julian <me@joejulian.name>
#
# === Copyright
#
# Copyright 2013 Joe Julian <me@joejulian.name>
#

class demo {
  class { 'apache': }
  class { 'openssh::server':
    source => 'puppet:///modules/demo/noroot_sshd_config'
  }
}
