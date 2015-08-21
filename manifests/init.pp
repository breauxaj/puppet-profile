class profile {
  include profile::mon::nrpe
  include profile::ops::haveged
  include profile::ops::postfix
  include profile::ops::rsyslog
  include profile::ops::ssh
  include profile::ops::sysctl

}
