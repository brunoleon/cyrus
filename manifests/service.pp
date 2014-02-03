class cyrus::service {

  service { 'cyrus-imapd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

