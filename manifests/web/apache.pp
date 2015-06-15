class profile::web::apache {
  include ::nrpe

  $profile_mon_httpd = hiera('profile::mon::httpd',undef)
  
  nrpe::httpd { 'default':
    warn_value => $profile_mon_httpd['warn_value'],
    crit_value => $profile_mon_httpd['crit_value'],
  }

}