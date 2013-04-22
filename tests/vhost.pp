include nginx

nginx::resource::vhost { 'test.local':
  ensure       => present,
  ipv6_enable  => 'true',
  proxy        => 'http://proxypass',
}

nginx::resource::vhost { 'test.local foo.local':
  listen_port  => 8080,
  ensure       => present,
  ipv6_enable  => 'true',
  proxy        => 'http://proxypass',
}

