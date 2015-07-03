class profile::web::nodejs {
  hiera_include('profile::web::nodejs', '')

  $nodejs_instance = hiera('nodejs::instance',{})
  create_resources('nodejs::instance',$nodejs_instance)

  $nodejs_service = hiera('nodejs::service',{})
  create_resources('nodejs::service',$nodejs_service)

  $supervisor_hook = hiera('supervisor::hook',{})
  create_resources('supervisor::hook',$supervisor_hook)

  $supervisor_service = hiera('supervisor::service',{})

  supervisor::service { 'default':
    ensure => $supervisor_service['ensure'],
    enable => $supervisor_service['enable'],
  }

}
