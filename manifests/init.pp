class rvm($version='latest', $install_rvm=true) {
  if $install_rvm {
    class {
      'rvm::dependencies': ;
      'rvm::system': version => $version, require => Package["curl"];
    }
  }
}
