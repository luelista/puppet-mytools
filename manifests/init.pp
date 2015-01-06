# == Class: mytools
#
# Full description of class mytools here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class maxweller-mytools {
  package { 'screen':
    ensure => installed
  }
  package { 'nano':
    ensure => installed
  }
  file { '/etc/screenrc':
    ensure => file,
    content => file('maxweller-mytools/screenrc'),
    require => Package[screen]
  }
  file { '/usr/bin/crtcat':
    ensure => file,
    content => file('maxweller-mytools/crtcat'),
    mode => "0755"
  }
  file { '/usr/bin/csr.sh':
    ensure => file,
    content => file('maxweller-mytools/csr.sh'),
    mode => "0755"
  }
  file { '/usr/bin/re':
    ensure => file,
    content => file('maxweller-mytools/re'),
    mode => "0755"
  }
  file { '/usr/bin/crtpaste':
    ensure => file,
    content => file('maxweller-mytools/crtpaste'),
    mode => "0755"
  }

}
