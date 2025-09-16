DROP DATABASE IF EXISTS `blog_task`;        -- agar baza mavjud bo'lsa o'chirish
CREATE DATABASE IF NOT EXISTS `blog_task`;
-- agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            -- hosil qilingan bazadan foydalanish
DROP TABLE IF EXISTS `blog_task`.`author`; -- post mualliflari jadvalini hosil qilish

CREATE TABLE IF NOT EXISTS `blog_task`.`author`
(
    `id`   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL UNIQUE COMMENT 'post muallifi'
);

TRUNCATE TABLE `blog_task`.`author`;

INSERT IGNORE INTO `blog_task`.`author`(`name`)
VALUES ('Anvar Nazrulloh'),
       ('Qudrat Abdurahimov'),
       ('Sardor Dushamov'),
       ('Post muallifi');

SELECT *
FROM `blog_task`.`author`;