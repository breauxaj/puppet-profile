class profile::sql::mongodb {
  include ::nrpe

  $profile_mon_mongodb = hiera('profile::mon::mongodb',{})

  nrpe::mongodb { 'default':
    warn_value => $profile_mon_mongodb['warn_value'],
    crit_value => $profile_mon_mongodb['crit_value'],
  }
  
  hiera_include('profile::sql::mongodb', '')
  
}
