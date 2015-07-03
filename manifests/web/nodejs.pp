class profile::web::nodejs {
  hiera_include('profile::web::nodejs', '')

  $nodejs_instance = hiera('nodejs::instance',{})
  
  nodejs::instance { 'default':
    user  => $nodejs_instance['user'],
    group => $nodejs_instance['group'],
    path  => $nodejs_instance['path'],
  }

}
