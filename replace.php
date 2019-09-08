<?php

$content = file_get_contents(__DIR__ . '/traefik.toml');
$content = str_replace('[--traefik_login_data--]', $_ENV['TRAEFIK_LOGIN_DATA'], $content);
$content = str_replace('[--traefik_email--]', $_ENV['TRAEFIK_EMAIL'], $content);

file_put_contents(__DIR__ . '/traefik.toml', $content);
