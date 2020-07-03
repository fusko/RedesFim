class nginx {

  package {'nginx':
    ensure => present,
    require => Class["system-update"],
  }

  
  service {'nginx':
    ensure  => 'running',
    enable  => 'true',
    require => Package['nginx']
  }
}
