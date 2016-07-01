
class maxweller-mytools::sshguard {
  package { 'sshguard':
    ensure => installed
  }
  file { '/etc/sshguard/whitelist':
    ensure => file,
    content => file('maxweller-mytools/sshguard_whitelist'),
    mode => "0755",
    require => Package[sshguard]
  }
}