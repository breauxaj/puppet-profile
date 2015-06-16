class profile::web::cfusion {
  include ::nrpe

  $profile_mon_httpd = hiera('profile::mon::httpd',{})
  
  nrpe::httpd { 'default':
    warn_value => $profile_mon_httpd['warn_value'],
    crit_value => $profile_mon_httpd['crit_value'],
  }

  $profile_mon_java = hiera('profile::mon::java',{})

  nrpe::java { 'default':
    warn_value => $profile_mon_java['warn_value'],
    crit_value => $profile_mon_java['crit_value'],
  }

  hiera_include('profile::web::cfusion', '')

}