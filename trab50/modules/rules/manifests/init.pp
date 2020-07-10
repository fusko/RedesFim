class rules {	
    exec { 'extract_editor_script2':
    command => "sudo bash /home/vagrant/run.sh",
   require=> Class["Arquivos"],
  }
}
