class profile::sql::mysql {
  include ::nrpe

  $profile_mon_mysql = hiera('profile::mon::mysql',{})

  nrpe::mysql { 'default':
    warn_value => $profile_mon_mysql['warn_value'],
    crit_value => $profile_mon_mysql['crit_value'],
  }

}
