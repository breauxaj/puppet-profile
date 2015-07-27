class profile::mon::nagios {
  hiera_include('profile::mon::nagios', '')

  $nagios_service = hiera('nagios::service',{})

  nagios::service { 'default':
    ensure => $nagios_service['ensure'],
    enable => $nagios_service['enable'],
  }

}
