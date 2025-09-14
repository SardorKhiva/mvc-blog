USE `blog_task`;
# DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu`
(
    `id`       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name`     VARCHAR(255) NOT NULL,
    `position` INT     DEFAULT NULL UNIQUE,
    `url`      VARCHAR(255),
    `status`   BOOLEAN DEFAULT 1
);

TRUNCATE TABLE `menu`; -- jadvalni tozalash

INSERT IGNORE INTO `menu`(`name`, `position`, `url`, `status`)
VALUES ('Asosiy sahifa', 1, 'index.php', 1),
       ('Biz haqimizda', 2, 'views/about.html', 1);

SELECT * FROM `menu` WHERE `status` = 1;