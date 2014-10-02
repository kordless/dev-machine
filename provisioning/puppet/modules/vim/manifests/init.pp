class vim {
  package{ ['vim', 'vim-nox', 'exuberant-ctags']:
    ensure  => installed
  }
}