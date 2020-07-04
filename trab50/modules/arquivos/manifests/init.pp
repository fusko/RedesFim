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
