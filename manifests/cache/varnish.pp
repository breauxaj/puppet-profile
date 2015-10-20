class profile::cache::varnish {
  include ::varnish

  $varnish_service = hiera('varnish::service',{})

  varnish::service { 'default':
    ensure => $varnish_service['ensure'],
    enable => $varnish_service['enable'],
  }

  $varnish_sysconfig = hiera('varnish::sysconfig',{})

  varnish::sysconfig { 'default':
    nfiles                => $varnish_sysconfig['nfiles'],
    memlock               => $varnish_sysconfig['memlock'],
    daemon_corefile_limit => $varnish_sysconfig['daemon_corefile_limit'],
    reload_vcl            => $varnish_sysconfig['reload_vcl'],
    daemon_opts           => $varnish_sysconfig['daemon_opts'],
  }

}
