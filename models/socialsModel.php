<?php

// bu fayl bazadan footer da joylashgan ijtimoiy tarmoqlar
// haqidagi xususiyatlar haqidagi ma'lumotlarni bilan ishlaydi

// bazaga ulanish
require_once __DIR__ . '/../config.php';

// status holatlari constantalarini import qilish
require_once __DIR__ . '/../constants.php';

function getSocials(): array
{
    global $pdo;

    $sql = "SELECT *
            FROM `blog_task`.`social`
            WHERE `status` = " . STATUS_ACTIVE .
            " ORDER BY `position`";

    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}