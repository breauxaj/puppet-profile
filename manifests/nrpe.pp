class profile::nrpe {
  include ::nrpe
  
  $profile_nrpe = hiera_hash('profile::nrpe',{})
  create_resources('nrpe::config',$profile_nrpe)

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

  $profile_nrpe_service = hiera_hash('profile::nrpe_service',{})
  create_resources('nrpe::service',$profile_nrpe_service)

  $profile_nrpe_users = hiera_hash('profile::nrpe_users',{})
  create_resources('nrpe::users',$profile_nrpe_users)

  $profile_nrpe_varnish = hiera_hash('profile::nrpe_varnish',{})
  create_resources('nrpe::varnish',$profile_nrpe_varnish)

}
