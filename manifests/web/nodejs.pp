class profile::web::nodejs {
  include ::nrpe

  $profile_mon_nodejs = hiera('profile::mon::nodejs',{})
  
  nrpe::nodejs { 'default':
    warn_value => $profile_mon_nodejs['warn_value'],
    crit_value => $profile_mon_nodejs['crit_value'],
  }

  $profile_mon_supervisor = hiera('profile::mon::supervisor',{})

  nrpe::supervisor { 'default':
    warn_value => $profile_mon_supervisor['warn_value'],
    crit_value => $profile_mon_supervisor['crit_value'],
  }

  hiera_include('profile::web::nodejs', '')

}
