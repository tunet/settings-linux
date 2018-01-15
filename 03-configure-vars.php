#!/usr/bin/php

<?php

$config = parse_ini_file(__DIR__ . '/config.cfg');


/*// apache2 config
$apacheConfPath = __DIR__ . '/dotfiles/apache2.conf';
$apacheConf = file_get_contents($apacheConfPath);
$apacheConf = str_replace('{{--MY_DOMAINS_DIR--}}', $config['MY_DOMAINS_DIR'], $apacheConf);
file_put_contents($apacheConfPath, $apacheConf);*/


// xdebug configs
$xDebugConfPath = __DIR__ . '/dotfiles/php/xdebug.ini';
$xDebugConf = file_get_contents($xDebugConfPath);
$xDebugLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/xdebug.log';
$xDebugConf = str_replace('{{--XDEBUG_REMOTE_LOG--}}', $xDebugLogFilePath, $xDebugConf);
$xDebugProfilerDirPath = $config['MY_DOTFILES_DIR'] . '/logs/php/xdebug-profiler/';
$xDebugConf = str_replace('{{--XDEBUG_PROFILER_OUTPUT_DIR--}}', $xDebugProfilerDirPath, $xDebugConf);
file_put_contents($xDebugConfPath, $xDebugConf);


/*// php7.0 apache2 configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.0/php-apache.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.0-apache2.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);*/
// php7.0 cli configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.0/php-cli.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.0-cli.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
// php7.0 fpm configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.0/php-fpm.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.0-fpm.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
/*// php7.1 apache2 configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.1/php-apache.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.1-apache2.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);*/
// php7.1 cli configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.1/php-cli.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.1-cli.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
// php7.1 fpm configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.1/php-fpm.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.1-fpm.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
/*// php7.2 apache2 configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.2/php-apache.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.2-apache2.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);*/
// php7.2 cli configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.2/php-cli.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.2-cli.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
// php7.2 fpm configs
$phpIniPath = __DIR__ . '/dotfiles/php/7.2/php-fpm.ini';
$phpConf = file_get_contents($xDebugConfPath);
$phpLogFilePath = $config['MY_DOTFILES_DIR'] . '/logs/php/7.2-fpm.log';
$phpConf = str_replace('{{--PHP_ERROR_LOG_FILE_PATH--}}', $phpLogFilePath, $phpConf);
