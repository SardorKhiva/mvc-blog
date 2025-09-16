<?php

// bu postlar bilan ishlaydigan model

// bazaga ulanish
require_once __DIR__ . '/../config.php';

// faol / nofaol constanalarini import qilish
require_once __DIR__ . '/../constants.php';

/**
 * Barcha faol postlar va post mualliflar haqidagi ma'lumotlarni oladi
 *
 * @return array Postlar haqidagi assotsiativ massiv
 */
function getBanners(): array
{
    global $pdo;

    $sql = "SELECT 
                   `p`.`title` AS 'post_title',
                   `p`.`img_url` AS 'img_url',
                   `p`.`content` AS 'post_content',
                   `p`.`created_at` AS 'created_at',
                   `p`.`status` AS 'post_status',
                   `pt`.`title` AS 'post_theme_title', 
                   `pt`.`status` AS 'post_theme_status', 
                   `a`.`name` AS 'author_name'
            FROM 
                `blog_task`.`post` AS `p` 
            INNER JOIN `blog_task`.`post_theme` AS `pt` 
                ON `p`.`theme_id` = pt.`id`
            INNER JOIN `blog_task`.`author` AS `a` 
                ON `p`.`author_id` = `a`.`id`
            WHERE 
                `p`.`status` = :status";

    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':status', STATUS_ACTIVE, PDO::PARAM_INT);  // bindValue ni xavfsiz joylash uchun ishlatish
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}