class links {

   package {"links":   # deve conter o nome do pacote a ser instalado
    ensure  => 'installed',
    require => Class["system-update"], # para garantir que o pacote esteja disponivel e atualizado
  }
}

