<?php

$host = 'localhost';
$db = 'Player';
$user = 'admin';
$pwd = 'admin';

return new PDO('mysql:dbname=' . $db . ';host=' . $host, $user, $pwd, [ PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC ]);
