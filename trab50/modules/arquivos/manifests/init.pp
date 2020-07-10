class arquivos {

	file {'/usr/share/nginx/www/index.html':
	ensure => file,
	require => Class["nginx"],
 	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	source => 'puppet:///modules/arquivos/index.html',
	}

file {'/home/vagrant/help.sh':
      ensure => file,
      require => Class["system-update"],
      owner => 'root',
      group => 'root',
      mode   => '0644', 
      source => 'puppet:///modules/arquivos/help.sh', 
      }



file {'/home/vagrant/run.sh':
     ensure => file,
     owner  => 'vagrant',
     group  => 'vagrant',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/run.sh',
   } 

 exec { "bkp_squid.conf_orig":
	          command => "sudo cp /etc/squid3/squid.conf /etc/squid3/squid.conf.orig",
	          require => Class["squid3"], 
          }
file {'/etc/squid3/squid.conf':
     ensure => file,
     require => Class["squid3"],
     subscribe => Exec["bkp_squid.conf_orig"],
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/squid3/conf.txt',
     
   } 
#arquivo contendo a lista de sites banidos
   file {'/etc/squid3/ban.acl':
     ensure => file,
     require => Class["squid3"],
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/squid3/ban.txt',
   } 

#arquivo contendo a lista de sites banidos somente em um determinado período
   file {'/etc/squid3/ban_tempo.acl':
     ensure => file,
     require => Class["squid3"],
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/squid3/ban_tempo.txt',
   } 
   
}
