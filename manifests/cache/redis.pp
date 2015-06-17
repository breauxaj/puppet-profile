class profile::cache::redis {
  include ::nrpe

  $profile_mon_redis = hiera('profile::mon::redis',{})

  nrpe::redis { 'default':
    warn_value => $profile_mon_redis['warn_value'],
    crit_value => $profile_mon_redis['crit_value'],
  }
  
  hiera_include('profile::cache::redis', '')
  
}
