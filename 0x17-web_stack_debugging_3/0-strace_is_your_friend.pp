#fix extension on file "wp-settings-php" from .phpp to .php

exec{'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => ['/usr/local/bin/', '/bin', '/local/bin']
}
