# --- SOCIAL NETWORKS TABLE ---
# --- Ijtimoiy tarmoqlar ma'lumotlari boshqaruvi ---

# DROP DATABASE IF EXISTS `blog_task`;        -- agar baza mavjud bo'lsa o'chirish
CREATE DATABASE IF NOT EXISTS `blog_task`;
-- agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            -- hosil qilingan bazadan foydalanish
# DROP TABLE IF EXISTS `menu`;                -- index sahifasi ustidagi menu uchun menu jadvalini hosil qilish


# DROP TABLE IF EXISTS `blog_task`.`social`;
CREATE TABLE IF NOT EXISTS `blog_task`.`social`
(
    `id`         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name`       VARCHAR(50)  NOT NULL UNIQUE COMMENT 'ijtimoiy tarmoq nomi',
    `icon_class` VARCHAR(255) DEFAULT NULL COMMENT 'Font Awesome dan icon lar classi',
    `url`        VARCHAR(255) NOT NULL COMMENT 'tarmoq manzili',
    `position`   SMALLINT UNSIGNED, -- maksimum 65 536 tarmoq qo'shsa bo'ladi
    `status`     BOOLEAN      DEFAULT 1 COMMENT 'yozuv holati, odatda faol'
);

# TRUNCATE TABLE `blog_task`.`social`;
INSERT INTO `blog_task`.`social` (`name`, `icon_class`, `url`, `position`)
VALUES ('Facebook', 'fa fa-facebook', 'https://www.facebook.com/mohirdevuz/?locale=uz_UZ', 1),
       ('Telegram', 'fa fa-telegram', 'https://t.me/mohirdev', 2),
       ('X (Twitter)', 'fa fa-twitter', 'https://x.com/mohirdev', 3),
       ('Behance', 'fa fa-behance', 'https://www.behance.net/gallery/158282875/MOHIRDEV', 4),
       ('Linkedin', 'fa fa-linkedin', 'https://uz.linkedin.com/company/mohirdevuz', 5),
       ('Dribble', 'fa fa-dribble', 'https://dribbble.com/search/mohirdev', 6);

SELECT *
FROM `blog_task`.`social`;