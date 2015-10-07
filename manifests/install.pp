class cyrus::install {

  include cyrus::variables
  
  user { 'cyrus':
    groups => ['ssl-cert'],
    uid    => 311
  }

  package { [$cyrus::variables::cyrus_pkg]:
    ensure  => present,
    require => User ['cyrus']
  }

  # add readline support in cyradm and sieveshell
  package { 'libterm-readline-gnu-perl':
    ensure  => present,
  }
}

