<?php
$cfg['blowfish_secret'] = 'fygntebrfgnbftgnyu7rtfytguhyej5fr7gtkhyujj5fr6gkthyjufrgthyj';
/**
 * List of env variables
 */
$vars = array(
    'PMA_HOST',
	'PMA_PORT',
	'PMA_USER',
	'MYSQL_ROOT_PASSWORD'
);
/**
 * Stock env variables in tab
 */
foreach ($vars as $var) {
    $env = getenv($var);
    if (!isset($_ENV[$var]) && $env !== false) {
        $_ENV[$var] = $env;
    }
}
/**
 * Only one server
 */
$i = 1;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;
/**
 * Variable definition
 */
$cfg['Servers'][$i]['host'] = "mysql";
$cfg['Servers'][$i]['port'] = "3306";
// $cfg['Servers'][$i]['user'] = "admin";
// $cfg['Servers'][$i]['password'] = "admin";
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';