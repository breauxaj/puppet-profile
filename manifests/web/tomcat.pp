class profile::web::tomcat {
  include ::nrpe

  $profile_mon_java = hiera('profile::mon::java',{})

  nrpe::java { 'default':
    warn_value => $profile_mon_java['warn_value'],
    crit_value => $profile_mon_java['crit_value'],
  }

  hiera_include('profile::web::tomcat', '')

}
