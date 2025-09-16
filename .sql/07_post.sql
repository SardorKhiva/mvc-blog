DROP DATABASE IF EXISTS `blog_task`;
CREATE DATABASE IF NOT EXISTS `blog_task`;


# DROP TABLE IF EXISTS `blog_task`.`post`;


CREATE TABLE IF NOT EXISTS `blog_task`.`post`
(
    `id`         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Changed to INT UNSIGNED for consistency
    `status`     BOOLEAN   DEFAULT 1 COMMENT 'postni faol/nofaol qilish',
    `is_banner`  BOOLEAN   DEFAULT 1 COMMENT 'post bannerda chiqsinmi',
    `title`      VARCHAR(255) NOT NULL COMMENT 'post sarlavhasi',
    `content`    LONGTEXT COMMENT 'post mazmuni',
    `author_id`  INT UNSIGNED COMMENT 'post muallifi',
    `theme_id`   INT UNSIGNED COMMENT 'post mavzusi',
    `img_url`    VARCHAR(255) NOT NULL COMMENT 'rasm havolasi',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`author_id`)
        REFERENCES `blog_task`.`author` (`id`)
        ON DELETE CASCADE,
    FOREIGN KEY (`theme_id`)
        REFERENCES `blog_task`.`post_theme` (`id`)
        ON DELETE CASCADE
);

/*
CREATE TABLE IF NOT EXISTS `blog_task`.`post`
(
    `id`        INT AUTO_INCREMENT PRIMARY KEY,
    `status`    BOOLEAN DEFAULT 1,
    `title`  VARCHAR(255) NOT NULL COMMENT 'post sarlavhasi',
    `content`   LONGTEXT,
    `author_id` INT UNSIGNED COMMENT 'post muallifi',
    FOREIGN KEY (`author_id`)
        REFERENCES `blog_task`.`author` (`id`)
        ON DELETE CASCADE -- agar muallif o'chirilsa postlari ham o'chirilsin
);
*/

# INSERT INTO `blog_task`.`post`(`author_id`, `content`)
# VALUES (4, 'Bu post mavzusi');

# TRUNCATE TABLE `blog_task`.`post`;
INSERT IGNORE INTO `blog_task`.`post` (`theme_id`, `title`, `img_url`, `content`, `author_id`)
VALUES (1, '1-Banner sarlavhasi', '/assets/images/banner-item-01.jpg', 'Bu 1-post mazmuni', 4),
       (2, '2-Banner sarlavhasi', '/assets/images/banner-item-02.jpg', 'Bu 2-post mazmuni', 4),
       (3, '3-Banner sarlavhasi', '/assets/images/banner-item-03.jpg', 'Bu 3-post mazmuni', 4),
       (1, '4-Banner sarlavhasi', '/assets/images/banner-item-04.jpg', 'Bu 4-post mazmuni', 4),
       (2, '5-Banner sarlavhasi', '/assets/images/banner-item-05.jpg', 'Bu 5-post mazmuni', 4),
       (3, '6-Banner sarlavhasi', '/assets/images/banner-item-06.jpg', 'Bu 6-post mazmuni', 4)
;

SELECT *
FROM `blog_task`.`post`;
