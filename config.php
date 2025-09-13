<?php

$host = '127.0.0.1';
$dbname = 'blog_task';
$user = 'root';
$password = '1302';
$dsn = "mysql: host = $host; dbname = $dbname";

try {
    $pdo = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    die("Ma'lumotlar bazasiga ulanib bo'lmadi: " . $e->getMessage());
}