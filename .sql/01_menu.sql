# --- MENU TABLE ---
# sahifa tepasidagi menyu boshqaruvi

# DROP DATABASE IF EXISTS `blog_task`;        -- agar baza mavjud bo'lsa o'chirish
CREATE DATABASE IF NOT EXISTS `blog_task`;
-- agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            -- hosil qilingan bazadan foydalanish
# DROP TABLE IF EXISTS `menu`;                -- index sahifasi ustidagi menu uchun menu jadvalini hosil qilish

-- jadval tuzilishi
CREATE TABLE IF NOT EXISTS `blog_task`.`menu`
(
    `id`       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `language` VARCHAR(30)  NOT NULL DEFAULT 'UZB-LAT' COMMENT 'sahifa tili',
    `name`     VARCHAR(255) NOT NULL COMMENT 'sahifa nomi',
    `position` INT                   DEFAULT NULL UNIQUE COMMENT 'har bir menyu nomi turgan joyi',
    `url`      VARCHAR(255) COMMENT 'sahifa manzili',
    `status`   BOOLEAN               DEFAULT 1 COMMENT 'page on/off status'
);

TRUNCATE TABLE `blog_task`.`menu`;  -- jadvalni tozalash

-- jadvalga yozuvlar qo'shish
INSERT INTO `blog_task`.`menu`(`name`, `position`, `url`, `status`)
VALUES ('Asosiy sahifa', 1, '/index.php', 1),
       ('Biz haqimizda', 2, '/about.php', 1),
       ('Blog yozuvlari', 3, '/blog.php', 1),
       ('Post tafsilotlari', 4, '/post-details.php', 1),
       ("Biz bilan bog'lanish", 5, '/contact.php', 1);

/* kuchayib ketib, sahifalar mukammallashtirilgandan keyin boshqa tillar ham qo'shiladi, insha Alloh
INSERT INTO `menu` (`language`, `name`, `position`, `url`, `status`)
VALUES ('ENG-USA', 'Home page', 1, 'index.php', 1),
       ('ENG-USA', 'About us', 2, 'views/about.php', 1),
       ('ENG-USA', 'Blog posts', 3, 'views/blog.php', 1),
       ('ENG-USA', 'Post details', 4, 'views/post-details.php', 1),
       ('ENG-USA', 'Contact us', 5, 'views/contact.php', 1);


 */

SELECT *
FROM `blog_task`.`menu`
WHERE `status` = 1;