class profile::ops::sysctl {
  include ::sysctl

  $sysctl_config = hiera_hash('sysctl::config',{})
  create_resources('sysctl::config',$sysctl_config)

}
