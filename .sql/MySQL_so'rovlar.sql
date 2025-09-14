# DROP DATABASE IF EXISTS `blog_task`;        // agar baza mavjud bo'lsa o'chirish
# CREATE DATABASE IF NOT EXISTS `blog_task`;  // agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            // hosil qilingan bazadan foydalanish
# DROP TABLE IF EXISTS `menu`;                // index sahifasi ustidagi menu uchun menu jadvalini hosil qilish

-- jadval tuzilishi
CREATE TABLE IF NOT EXISTS `menu`
(
    `id`       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `language` VARCHAR(30)  NOT NULL DEFAULT 'UZB-LAT' COMMENT 'sahifa tili',
    `name`     VARCHAR(255) NOT NULL COMMENT 'sahifa nomi',
    `position` INT                   DEFAULT NULL UNIQUE COMMENT 'har bir menyu nomi turgan joyi',
    `url`      VARCHAR(255) COMMENT 'sahifa manzili',
    `status`   BOOLEAN               DEFAULT 1 COMMENT 'page on/off status'
);

# --- MENU TABLE ---
# TRUNCATE TABLE `menu`; -- jadvalni tozalash

-- jadvalga yozuvlar qo'shish
INSERT INTO `menu`(`name`, `position`, `url`, `status`)
VALUES ('Asosiy sahifa', 1, 'index.php', 1),
       ('Biz haqimizda', 2, 'views/about.html', 1),
       ('Blog yozuvlari', 3, 'views/blog.html', 1),
       ('Post tafsilotlari', 4, 'views/post-details.html', 1),
       ("Biz bilan bog'lanish", 5, 'views/contact.html', 1);

/* kuchayib ketib, sahifalar mukammallashtirilgandan keyin boshqa tillar ham qo'shiladi, insha Alloh
INSERT INTO `menu` (`language`, `name`, `position`, `url`, `status`)
VALUES ('ENG-USA', 'Home page', 1, 'index.php', 1),
       ('ENG-USA', 'About us', 2, 'views/about.html', 1),
       ('ENG-USA', 'Blog posts', 3, 'views/blog.html', 1),
       ('ENG-USA', 'Post details', 4, 'views/post-details.html', 1),
       ('ENG-USA', 'Contact us', 5, 'views/contact.html', 1);


 */

SELECT *
FROM `menu`
WHERE `status` = 1;
-- -----------------------------------------------------------------------

# --- SOCIAL NETWORKS TABLE ---
DROP TABLE IF EXISTS `social`;
CREATE TABLE IF NOT EXISTS `social`
(
    `id`         INT AUTO_INCREMENT PRIMARY KEY,
    `name`       VARCHAR(50)  NOT NULL UNIQUE COMMENT 'ijtimoiy tarmoq nomi',
    `icon_class` VARCHAR(255) DEFAULT NULL COMMENT 'Font Awesome dan icon lar classi',
    `url`        VARCHAR(255) NOT NULL COMMENT 'tarmoq manzili',
    `position`   SMALLINT UNSIGNED, -- maksimum 65 536 tarmoq qo'shsa bo'ladi
    `status`     BOOLEAN      DEFAULT 1 COMMENT 'yozuv holati, odatda faol'
);

# TRUNCATE TABLE `social`;
INSERT INTO `social` (`name`, `icon_class`, `url`, `position`)
VALUES ('Facebook', 'fa fa-facebook', 'https://www.facebook.com/mohirdevuz/?locale=uz_UZ', 1),
       ('Telegram', 'fa fa-telegram', 'https://t.me/mohirdev', 2),
       ('X (Twitter)', 'fa fa-twitter', 'https://x.com/mohirdev', 3),
       ('Behance', 'fa fa-behance', 'https://www.behance.net/gallery/158282875/MOHIRDEV', 4),
       ('Linkedin', 'fa fa-linkedin', 'https://uz.linkedin.com/company/mohirdevuz', 5),
       ('Dribble', 'fa fa-dribble', 'https://dribbble.com/search/mohirdev', 6);


# INSERT INTO `social` (`name`, `icon_class`, `url`, `position`)
# VALUES ('Facebook', 'assets/images/socials/fb-icon.png', 'https://www.facebook.com/mohirdevuz/?locale=uz_UZ', 1),
#        ('Telegram', 'assets/images/socials/tg-icon.png', 'https://t.me/mohirdev', 2),
#        ('X (Twitter)','assets/images/socials/x-icon.png', 'https://x.com/mohirdev', 3),
#        ('Behance', 'assets/images/socials/behance-icon.png', 'https://www.behance.net/gallery/158282875/MOHIRDEV', 4),
#        ('Linkedin', 'assets/images/socials/linkedin-icon.png', 'https://uz.linkedin.com/company/mohirdevuz', 5),
#        ('Dribble', 'assets/images/socials/dribble-icon.png', 'https://dribbble.com/search/mohirdev', 6);

SELECT *
FROM `social`;