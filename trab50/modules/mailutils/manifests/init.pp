class mailutils {

  package {'mailutils':
    ensure => present,
    require => Class["postfix"],
  }

  
  #service {'mandb':
   # ensure  => 'running',
   # enable  => 'true',
   # require => Package['mandb']
  #}
}
