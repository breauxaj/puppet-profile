class profile::mon::client {
  include ::nrpe
  include ::nrpe::plugins

  $profile_mon_client = hiera('profile::mon::client',{})
  
  nrpe::config { 'default':
    server_address      => $profile_mon_client['server_address'],
    allowed_hosts       => $profile_mon_client['allowed_hosts'],
    server_port         => $profile_mon_client['server_port'],
    command_timeout     => $profile_mod_client['command_timeout'],
    connection_timeout  => $profile_mon_client['connection_timeout'],
  }

  $profile_mon_disks = hiera('profile::mon::disks',{})
  
  nrpe::disks { 'default':
    warn_value => $profile_mon_disks['warn_value'],
    crit_value => $profile_mon_disks['crit_value'],
  }

  $profile_mon_httpd = hiera('profile::mon::httpd',{})
  
  nrpe::httpd { 'default':
    warn_value => $profile_mon_httpd['warn_value'],
    crit_value => $profile_mon_httpd['crit_value'],
  }

  $profile_mon_java = hiera('profile::mon::java',{})

  nrpe::java { 'default':
    warn_value => $profile_mon_java['warn_value'],
    crit_value => $profile_mon_java['warn_value'],
  }

  $profile_mon_ldap = hiera('profile::mon::ldap',{})
  
  nrpe::ldap { 'default':
    host       => $profile_mon_ldap['host'],
    basedn     => $profile_mon_ldap['basedn'],
    binddn     => $profile_mon_ldap['binddn'],
    pass       => $profile_mon_ldap['pass'],
    warn_value => $profile_mon_ldap['warn_value'],
    crit_value => $profile_mon_ldap['warn_value'],
  }

  $profile_mon_load = hiera('profile::mon::load',{})
  
  nrpe::load { 'default':
    warn_value => $profile_mon_load['warn_value'],
    crit_value => $profile_mon_load['crit_value'],
  }

}
