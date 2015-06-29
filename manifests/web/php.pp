class profile::web::php {
  include ::php

  hiera_include('profile::web::php', '')
  
  $modules = hiera_array('profile::web::php::modules',{})
  php::modules { $modules: }

}