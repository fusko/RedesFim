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
	

##exec {"certificado_1":
	##command => "openssl req -nodes -newkey rsa:2048 -keyout localhost.key -out localhost.csr -subj \"/C=BR/ST=RS/L=Ijui/O=Unijui/OU=DCEEng/CN=localhost.com\" " ,
	##require => Class["arquivos"]
##}


##exec {"certificado_2":
##	command => "sudo openssl x509 -req -days 365 -in localhost.csr -signkey localhost.key -out localhost.crt ",
	##require => Exec['certificado_1']
##}

##exec {"nginx_restart":
	##command => "sudo service nginx restart ",
	##require => Exec['certificado_2']
##}


	



 

include system-update
include nginx
include arquivos
include links
include postfix
include user
include mutt
include mailutils
