class golang {
  package{ ['build-essential', 'golang-go', 'gccgo']:
    ensure  => installed
  }
}