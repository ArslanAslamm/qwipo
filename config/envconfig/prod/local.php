<?php
/*return array(
    'db' => array(
        'driver' => 'Pdo',
        'dsn' => 'mysql:dbname=tvishasy_topmarks;host=localhost',
        'username' => 'tvishasy_topmks',
        'password' => '9VzE&tyh&oY]',
        'driver_options' => array(
            \PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\', time_zone = "' . date('P') . '"'
        ),
    ),
);*/

// From the blog-post
$connectstr_dbhost = '';
$connectstr_dbname = '';
$connectstr_dbusername = '';
$connectstr_dbpassword = '';

foreach ($_SERVER as $key => $value)
{
    if (strpos($key, "MYSQLCONNSTR_") !== 0)
    {
        continue;
    }

    $connectstr_dbhost = preg_replace("/^.*Data Source=(.+?);.*$/", "\\1", $value);
    $connectstr_dbname = preg_replace("/^.*Database=(.+?);.*$/", "\\1", $value);
    $connectstr_dbusername = preg_replace("/^.*User Id=(.+?);.*$/", "\\1", $value);
    $connectstr_dbpassword = preg_replace("/^.*Password=(.+?)$/", "\\1", $value);

    //echo $value;
}

return array(
    'db' => array(
        'driver' => 'Pdo',
        'dsn' => "mysql:dbname=localdb;host=127.0.0.1:50560",
        'username' => 'azure',
        'password' => '6#vWHD_$',
        'driver_options' => array(
            \PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\', time_zone = "' . date('P') . '"'
        ),
    ),
);