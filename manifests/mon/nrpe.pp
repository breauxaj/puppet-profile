class profile::mon::nrpe {
  hiera_include('profile::mon::nrpe', '')

  $nrpe_config = hiera('nrpe::config',{})
  
  nrpe::config { 'default':
    server_address      => $nrpe_config['server_address'],
    allowed_hosts       => $nrpe_config['allowed_hosts'],
    server_port         => $nrpe_config['server_port'],
    command_timeout     => $nrpe_config['command_timeout'],
    connection_timeout  => $nrpe_config['connection_timeout'],
  }

  $nrpe_disks = hiera('nrpe::disks',{})
  
  nrpe::disks { 'default':
    warn_value => $nrpe_disks['warn_value'],
    crit_value => $nrpe_disks['crit_value'],
  }

  $nrpe_ldap = hiera('nrpe::ldap',{})
  
  nrpe::ldap { 'default':
    host       => $nrpe_ldap['host'],
    basedn     => $nrpe_ldap['basedn'],
    binddn     => $nrpe_ldap['binddn'],
    pass       => $nrpe_ldap['pass'],
    warn_value => $nrpe_ldap['warn_value'],
    crit_value => $nrpe_ldap['crit_value'],
  }

  $nrpe_load = hiera('nrpe::load',{})
  
  nrpe::load { 'default':
    warn_value => $nrpe_load['warn_value'],
    crit_value => $nrpe_load['crit_value'],
  }

  $nrpe_procs = hiera('nrpe::procs',{})

  nrpe::procs { 'default':
    warn_value => $nrpe_procs['warn_value'],
    crit_value => $nrpe_procs['crit_value'],
  }

  $nrpe_redis = hiera('nrpe::redis',{})

  nrpe::redis { 'default':
    warn_value => $nrpe_redis['warn_value'],
    crit_value => $nrpe_redis['crit_value'],
  }

  $nrpe_service = hiera('nrpe::service',{})

  nrpe::service { 'default':
    ensure => $nrpe_service['ensure'],
    enable => $nrpe_service['enable'],
  }

  $nrpe_users = hiera('nrpe::users',{})

  nrpe::users { 'default':
    warn_value => $nrpe_users['warn_value'],
    crit_value => $nrpe_users['crit_value'],
  }

  $nrpe_varnish = hiera('nrpe::varnish',{})

  nrpe::varnish { 'default':
    warn_value => $nrpe_varnish['warn_value'],
    crit_value => $nrpe_varnish['crit_value'],
  }

}
