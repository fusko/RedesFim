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




      





#criação dos arquivos do squid
#comando para criar bakcup do arquivo squid.conf original
    exec { "bkp_squid.conf_orig":
	          command => "sudo cp /etc/squid3/squid.conf /etc/squid3/squid.conf.orig",
	          require => Class["squid3"], 
          }

#arquivo squid.conf, responsável pela configuração do squid.
#cria somente se o arquivo squid.conf.orig já tiver sido criado
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
# Insere o arquivo default no diretório destino
  file {'/etc/nginx/sites-enabled/default':
	ensure  => file,
	require => Class["nginx"],
	owner => "root",
	group => "root",
	mode => "755",
	source => "puppet:///modules/arquivos/default",
	}

file {'/home/vagrant/run.sh':
     ensure => file,
     owner  => 'vagrant',
     group  => 'vagrant',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/run.sh',
   } 

}
