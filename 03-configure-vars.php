#!/usr/bin/php

<?php

$apacheConfPath = __DIR__ . '/dotfiles/apache2.conf';

$config = parse_ini_file(__DIR__ . '/config.cfg');
$apacheConf = file_get_contents($apacheConfPath);
$apacheConf = str_replace('{{--MY_DOMAINS_DIR--}}', $config['MY_DOMAINS_DIR'], $apacheConf);
file_put_contents($apacheConfPath, $apacheConf);
