#increase the anount of traffic in Nginx server

#increase the ulimit of default file
exec { 'fix--for-Nginx':
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin', '/bin', '/local/bin'],
}

exec { 'nginx-restart':
  command => '/etc/init.d/nginx restart',
  path    => ['/etc/init.d'],
}
