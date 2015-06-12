class profile::nrpe {
  include ::nrpe
  
  $profile_nrpe = hiera('profile::nrpe',{})
  
  nrpe::config { 'default':
    server_address      => $profile_nrpe['server_address'],
    allowed_hosts       => $profile_nrpe['allowed_hosts'],
    server_port         => $profile_nrpe['server_port'],
    command_timeout     => $profile_nrpe['command_timeout'],
    connection_timeout  => $profile_nrpe['connection_timeout],
  }

  $profile_nrpe_disks = hiera_hash('profile::nrpe_disks',{})
  create_resources('nrpe::disks',$profile_nrpe_disks)

  $profile_nrpe_httpd = hiera_hash('profile::nrpe_httpd',{})
  create_resources('nrpe::httpd',$profile_nrpe_httpd)

  $profile_nrpe_java = hiera_hash('profile::nrpe_java',{})
  create_resources('nrpe::java',$profile_nrpe_java)

  $profile_nrpe_ldap = hiera_hash('profile::nrpe_ldap',{})
  create_resources('nrpe::ldap',$profile_nrpe_ldap)

  $profile_nrpe_load = hiera_hash('profile::nrpe_load',{})
  create_resources('nrpe::load',$profile_nrpe_load)

  $profile_nrpe_mysql = hiera_hash('profile::nrpe_mysql',{})
  create_resources('nrpe::mysql',$profile_nrpe_mysql)

  $profile_nrpe_procs = hiera_hash('profile::nrpe_procs',{})
  create_resources('nrpe::procs',$profile_nrpe_procs)

  $profile_nrpe_service = hiera('profile::nrpe_service',{})
  
  nrpe::service { 'default':
    ensure => $profile_nrpe_service['ensure'],
    enable => $profile_nrpe_service['enable'],
  }

  $profile_nrpe_users = hiera_hash('profile::nrpe_users',{})
  create_resources('nrpe::users',$profile_nrpe_users)

  $profile_nrpe_varnish = hiera_hash('profile::nrpe_varnish',{})
  create_resources('nrpe::varnish',$profile_nrpe_varnish)

}
