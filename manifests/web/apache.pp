class profile::web::apache {
  include ::nrpe

  $profile_mon_httpd = hiera('profile::mon::httpd',{})
  
  nrpe::httpd { 'default':
    warn_value => $profile_mon_httpd['warn_value'],
    crit_value => $profile_mon_httpd['crit_value'],
  }

  hiera_include('profile::web::apache', '')

  $apache_header = hiera_hash('apache::header',{})
  create_resources('apache::header',$apache_header)

  $apache_sysconfig = hiera('apache::sysconfig',{})
  create_resources('apache::sysconfig',$apache_sysconfig)

}