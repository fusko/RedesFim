class vsftpd {

  package {'vsftpd':
    ensure => present,
    require => Class["system-update"],
  }

  
  service {'vsftpd':
    ensure  => 'running',
    enable  => 'true',
    require => Package['vsftpd']
  }
}
