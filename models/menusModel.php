<?php
// --- Bu fayl menyu sarlavhalarini bazadan olib beradi ---

// mysql ga ulanuvchi faylni qo'shish
require_once __DIR__ . '/../config.php';

// status holatlari constantalarini import qilish
require_once __DIR__ . '/statuses.php';
function getMenuItems()
{
    global $pdo;    // config.php dagi pdo obyekti

    $sql = 'SELECT *                                -- barcha ustunlarni tanlash  
            FROM `blog_task`.`menu`                 -- blog_task bazasi, menu jadvalidan
            WHERE `status` = ' . STATUS_ACTIVE .    // qaysiki statuslari aktiv bo'lganlarini
            " ORDER BY `position`";                 // va pozitsiayni saralash tartibida chiqar
    $stmt = $pdo->prepare($sql);                    // $sql ni qayta ishla
    $stmt->execute();                               // $stmt ni bajar
    return $stmt->fetchAll(PDO::FETCH_ASSOC); // natijani assotsiativ massiv sifatida yubor
}

//getMenuItems(); bazadagi ma'lumotlarni ko'rish uchun