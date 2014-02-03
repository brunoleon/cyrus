class cyrus::variables {
  if $::lsbdistid in ['Ubuntu', 'Debian'] {
    $cyrus_pkg = ['cyrus-admin', 'cyrus-clients', 'cyrus-imapd', 'cyrus-pop3d', 'cyrus-sasl2-doc', 'cyrus-doc']
  }
  else {
    fail( "This module doesn't handle your operating system yet." )
  }
}
