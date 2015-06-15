class profile {
  include profile::mon::nrpe
  include ::haveged

  haveged::service { 'default':
    ensure => running,
    enable => true
  }

}