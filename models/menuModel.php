<?php
require_once __DIR__ . '/../config.php';
// --- Bu fayl menyu sarlavhalarini bazadan olib beradi ---
const STATUS_ACTIVE = 1;
const STATUS_INACTIVE = 0;
function getMenuItems()
{
    global $pdo;

    $sql = 'SELECT * FROM `blog_task`.`menu` WHERE `status` = ' . STATUS_ACTIVE;
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

//getMenuItems(); bazadagi ma'lumotlarni ko'rish uchun