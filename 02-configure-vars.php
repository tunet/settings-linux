#!/usr/bin/php
<?php

$config = parse_ini_file(__DIR__ . '/config.cfg');

// php7.2 cli configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.2/php-cli.ini';
$phpConf = file_get_contents($phpIniPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.2-cli.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
file_put_contents($phpIniPath, $phpConf);

// php7.2 fpm configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.2/php-fpm.ini';
$phpConf = file_get_contents($phpIniPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.2-fpm.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
file_put_contents($phpIniPath, $phpConf);
