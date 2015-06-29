class profile::web::php {
  include ::php

  hiera_include('profile::web::php', '')
  
  $modules = hiera('profile::web::php::modules',{})
  php::modules { $modules: }

}