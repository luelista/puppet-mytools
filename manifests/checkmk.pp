class maxweller-mytools::checkmk ($agent_port = 6556) {
  package { ['xinetd', 'check-mk-agent'] :
    ensure => installed
  }
  file { '/etc/xinetd.d/check_mk':
    ensure => file,
    content => template('maxweller-mytools/check_mk.erb'),
    require => Package[check-mk-agent]
  }
}