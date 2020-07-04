class postfix::config{
file {'/etc/postfix/main.cf':
    ensure => file,
	require => Package['postfix'],
 	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	source => 'puppet:///modules/postfix/main.cf',
}

file {'/etc/postfix/virtual':
    ensure => file,
	require => Package['postfix'],
 	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	source => 'puppet:///modules/postfix/virtual',
}


file {'/etc/postfix/header_checks':
    ensure => file,
	require => Package['postfix'],
 	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	source => 'puppet:///modules/postfix/header_checks',
}


file {'/etc/postfix/sender_access':
    ensure => file,
	require => Package['postfix'],
 	owner  => 'root',
	group  => 'root',
	mode   => '0644',
	source => 'puppet:///modules/postfix/sender_access',
}
}


