<?php

$host = '127.0.0.1';
$dbname = 'blog_task';
$user = 'root';
$password = '';
$dsn = "mysql: host = $host; dbname = $dbname";

try {
    $pdo = new PDO($dsn, $user, $password);
//    echo "<pre>";
//    echo "Ulandi\n\n";
//    var_dump($pdo);
//    print_r($pdo);
//    echo "</pre>";
} catch (PDOException $e) {
    echo("Ma'lumotlar bazasiga ulanib bo'lmadi: " . $e->getMessage());
}