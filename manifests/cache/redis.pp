class profile::cache::redis {  
  include ::redis

  $redis_config = hiera('redis::config',{})
  
  redis::config { 'default':
    port                      => $redis_config['port'],
    bind                      => $redis_config['bind'],
    unixsocket                => $redis_config['unixsocket'],
    unixsocketperm            => $redis_config['unixsocketperm'],
    databases                 => $redis_config['databases'],
    save                      => $redis_config['save'],
    rdbcompression            => $redis_config['rdbcompression'],
    dbfilename                => $redis_config['dbfilename'],
    masterip                  => $redis_config['masterip'],
    masterport                => $redis_config['masterport'],
    masterauth                => $redis_config['masterauth'],
    slaveservestaledata       => $redis_config['slaveserverstaledata'],
    replpingslaveperiod       => $redis_config['replpingslaveperiod'],
    repltimeout               => $redis_config['repltimeout'],
    requirepass               => $redis_config['requirepass'],
    renamecommand             => $redis_config['renamecommand'],
    maxclients                => $redis_config['maxclients'],
    maxmemory                 => $redis_config['maxmemory'],
    maxmemorypolicy           => $redis_config['maxmemorypolicy'],
    maxmemorysamples          => $redis_config['maxmemorysamples'],
    appendonly                => $redis_config['appendonly'],
    appendfilename            => $redis_config['appendfilename'],
    appendfsync               => $redis_config['appendfsync'],
    noappendfsynconrewrite    => $redis_config['noappendfsynconrewrite'],
    autoaofrewritepercentage  => $redis_config['autoaofrewritepercentage'],
    autoaofrewriteminsize     => $redis_config['autoaofrewriteminsize'],
    slowlogslowerthan         => $redis_config['slowlogslowerthan'],
    slowlogmaxlen             => $redis_config['slowlogmaxlen'],
    hashmaxzipmapentries      => $redis_config['hashmaxzipmapentries'],
    hashmaxzipmapvalue        => $redis_config['hashmaxzipmapvalue'],
    listmaxziplistentries     => $redis_config['listmaxziplistentries'],
    listmaxziplistvalue       => $redis_config['listmaxziplistvalue'],
    setmaxintsetentries       => $redis_config['setmaxintsetentries'],
    zsetmaxziplistentries     => $redis_config['zsetmaxziplistentries'],
    zsetmaxziplistvalue       => $redis_config['zsetmaxziplistvalue'],
    activerehashing           => $redis_config['activerehashing'],
    include                   => $redis_config['include'],
  }

  $redis_service = hiera('redis::service',{})
  
  redis::service { 'default':
    ensure => $redis_service['ensure'],
    enable => $redis_service['enable'],
  }

}
