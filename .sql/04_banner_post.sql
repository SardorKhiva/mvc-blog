-- butun jadval o'rniga post jadvalida is_banner true bo'lsa bannerga chiqadigan qilindi
#  bunda butun jadval qisqaradi va ish osonlashadi
-- bu bannerda joylashgan elementlarni boshqaradi

# DROP DATABASE IF EXISTS `blog_task`; -- agar baza mavjud bo'lsa o'chirish
# CREATE DATABASE IF NOT EXISTS `blog_task`;
-- agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            -- hosil qilingan bazadan foydalanish

-- bannerlar jadvalini hosil qilish
DROP TABLE IF EXISTS `blog_task`.`banner_post`;   -- bannerdagi postlar jadvalini hosil qilish

# TRUNCATE TABLE `blog_task`.`banner_post`;  -- jadvalni tozalash
#
# CREATE TABLE IF NOT EXISTS `blog_task`.`banner_post`
# (
#     `id`                   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
#     `post_id`              INT UNSIGNED NOT NULL,
#     `position`             INT COMMENT 'bannerdagi pozitsiya',
#     FOREIGN KEY (`post_id`)
#         REFERENCES `blog_task`.`post` (`id`)
#         ON DELETE CASCADE
# );
#
#
# SELECT *
# FROM `blog_task`.`banner_post`;
#

/*  eski va murakkab jadval
CREATE TABLE IF NOT EXISTS `blog_task`.`banner`
(
    `id`                   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `theme_id`             INT          NOT NULL COMMENT 'post mavzusi',
    `title_id`             INT          NOT NULL COMMENT 'post sarlavhasi, post jadvaliga birlashadi',
    `url`                  VARCHAR(255) NOT NULL COMMENT 'post manzili', -- barcha postlar uchun 1 sahifa ekan
    `banner_item_position` INT COMMENT 'bannerda joylashgan element pozitsiyasi',
    `img_url`              VARCHAR(255) NOT NULL COMMENT 'post asosiy rasmi havolasi',
    `author_id`            INT UNSIGNED COMMENT 'post muallifi',
    `created_at`           TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'post joylangan vaqti = joriy UTC vaqti',
    `updated_at`           TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP COMMENT "post o'zgartirilgan vaqtini ham saqlasin",
    `status`               BOOLEAN   DEFAULT 1,                          -- ENUM ('qoralama', 'joylangan', 'arxiv')
    FOREIGN KEY (`theme_id`)                                             -- shu ustun tashqi kalit bo'lsin
        REFERENCES `blog_task`.`post_theme` (`id`)                       -- shunga ko'rsatkich bo'lsin
        ON DELETE CASCADE,                                               -- agar post mavzusi o'chirilsa postlar ham o'chadi
    FOREIGN KEY (`author_id`)                                            -- shu jadval, shu ustunga tashqi kalit o'rnatilsin (boshqa jadvaldan shu ustunga ma'lumotlar JOIN qilinsin)
        REFERENCES `blog_task`.`author` (`id`),                           -- qaysiki `author` jadvali id si bilan mos keladigan (tepadagi ustunga shu ustun ulansin)
#         ON DELETE CASCADE                          -- agar muallif o'chirilsa postlari ham o'chirilsin
    FOREIGN KEY(`title_id`)
        REFERENCES `blog_task`.`post`(`id`)
        ON DELETE CASCADE                                -- agar post o'chirilsa, bannerdan ham o'chirilsin
);
*/