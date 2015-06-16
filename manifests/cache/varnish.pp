class profile::cache::varnish {
  include ::nrpe

  $profile_mon_varnish = hiera('profile::mon::varnish',{})

  nrpe::varnish { 'default':
    warn_value => $profile_mon_varnish['warn_value'],
    crit_value => $profile_mon_varnish['crit_value'],
  }
  
  hiera_include('profile::cache::varnish', '')
  
}
