class profile::web::tomcat {
  hiera_include('profile::web::tomcat', '')

  $tomcat_config = hiera('tomcat::config',{})

  tomcat::config { 'default':
    runas         = $tomcat_config['runas'],
    catalina_home = $tomcat_config['catalina_home'],
    catalina_base = $tomcat_config['catalina_base'],
    java_opts     = $tomcat_config['java_opts'],
  }

}
