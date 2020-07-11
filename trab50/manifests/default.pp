# este arquivo será o primeiro a ser executado pelo Vagrant

Exec { path => [ "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin" ] }

package { [
    'vim',
    'lynx-cur',
    'boxes'
  ]:
  require => Class["system-update"], 
  ensure  => 'installed',
}
	



		
#faz a reconfiguração do squid após a alteração no squid.conf
exec { "reconfigure_squid":
	command => "sudo squid3 -k reconfigure",
	require => Class["squid3"],
  before => Exec ["restart_squid"],
}

#reinicializa o serviço após a reconfiguração do squid
exec { "restart_squid":
	command => "sudo service squid3 restart",
  require => Class["arquivos"],
  subscribe => Exec["reconfigure_squid"], #só executa após o reconfigure
}

exec { "restart_vsftpd":
	command => "sudo service vsftpd restart",
  require => Class["arquivos"]
}
 

include system-update
include nginx
include arquivos
include links
include postfix
include user
include mutt
include mailutils
include rules
include squid3
include vsftpd
