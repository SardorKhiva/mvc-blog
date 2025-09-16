
# DROP DATABASE IF EXISTS `blog_task`;        -- agar baza mavjud bo'lsa o'chirish
CREATE DATABASE IF NOT EXISTS `blog_task`;
-- agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            -- hosil qilingan bazadan foydalanish
# DROP TABLE IF EXISTS `menu`;                -- index sahifasi ustidagi menu uchun menu jadvalini hosil qilish

# DROP TABLE IF EXISTS `blog_task`.`post_theme`;

# TRUNCATE TABLE `blog_task`.`post_theme`;

CREATE TABLE IF NOT EXISTS `blog_task`.`post_theme`
(
    `id`     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, --  `theme_id`   VARCHAR(255) NOT NULL COMMENT 'post mavzusi',
    `title`  VARCHAR(50) UNIQUE NOT NULL,
    `status` BOOLEAN DEFAULT 1
);

INSERT INTO `blog_task`.`post_theme`(`title`)
VALUES
       ('Moda'),
       ('Tabiat'),
       ('Hayot tarzi')
#        ,('Sport')
#        ,('Texnologiya')
#        ,('Ta\'lim')
;


SELECT *
FROM `blog_task`.`post_theme`;