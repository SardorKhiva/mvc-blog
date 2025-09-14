<?php
// --- Bu fayl menyu sarlavhalarini bazadan olib beradi ---

// mysql ga ulanuvchi faylni qo'shish
require_once __DIR__ . '/../config.php';

// aktiv / deaktiv qilish belgilari (flag)
const STATUS_ACTIVE = 1;
const STATUS_INACTIVE = 0;
function getMenuItems()
{
    global $pdo;    // config.php dagi pdo obyekti

    $sql = 'SELECT *    -- barcha ustunlarni tanlash  
            FROM `blog_task`.`menu`  -- blog_task bazasi, menu jadvalidan
            WHERE `status` = ' . STATUS_ACTIVE .  // qaysiki statuslari aktiv bo'lganlarini
            " ORDER BY `position` ASC";           // va pozitsiayni saralash tartibida chiqar
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

//getMenuItems(); bazadagi ma'lumotlarni ko'rish uchun