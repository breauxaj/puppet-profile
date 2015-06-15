class profile::cache::varnish {
  include ::nrpe

  $profile_mon_varnish = hiera('profile::mon::varnish',undef)

  nrpe::varnish { 'default':
    warn_value => $profile_mon_varnish['warn_value'],
    crit_value => $profile_mon_varnish['crit_value'],
  }
  
}