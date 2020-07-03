
class user {
  file {'/home/vagrant/createUser.sh':
      ensure => file,
      require => Class["system-update"],
      owner => 'root',
      group => 'root',
      mode   => '0644', 
      source => 'puppet:///modules/user/createUser.sh',
       
      }

      exec { 'extract_editor_script':
  command => "sudo bash '/home/vagrant/createUser.sh'",
  require=> Class["Arquivos"],
}




}


