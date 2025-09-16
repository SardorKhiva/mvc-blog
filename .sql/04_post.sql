-- bu bannerda joylashgan postlarni boshqaradi

# DROP DATABASE IF EXISTS `blog_task`;        -- agar baza mavjud bo'lsa o'chirish
CREATE DATABASE IF NOT EXISTS `blog_task`;
-- agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            -- hosil qilingan bazadan foydalanish
# DROP TABLE IF EXISTS `blog_task`.`post`;    -- postlar jadvalini hosil qilish


DROP TABLE IF EXISTS `blog_task`.`post`;

# TRUNCATE TABLE `blog_task`.`post`;

CREATE TABLE IF NOT EXISTS `blog_task`.`post`
(
    `id`         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `theme_id`   INT          NOT NULL COMMENT 'post mavzusi',
    `title`      VARCHAR(255) COMMENT 'post sarlavhasi',
#     `url`        VARCHAR(255) NOT NULL COMMENT 'post manzili', -- barcha postlar uchun 1 sahifa ekan
#     `position` INT UNSIGNED DEFAULT LAST_INSERT_ID() + 1,
    `img_url`    VARCHAR(255) NOT NULL COMMENT 'post asosiy rasmi havolasi',
    `content`    LONGTEXT     NOT NULL,
    `author_id`  INT UNSIGNED COMMENT 'post muallifi',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'post joylangan vaqti = joriy UTC vaqti',
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP COMMENT "post o'zgartirilgan vaqtini ham saqlasin",
    `status`     BOOLEAN   DEFAULT 1,              -- ENUM ('qoralama', 'joylangan', 'arxiv')
    FOREIGN KEY (`theme_id`)                       -- shu ustun tashqi kalit bo'lsin
        REFERENCES `blog_task`.`post_theme` (`id`) -- shunga ko'rsatkich bo'lsin
        ON DELETE CASCADE,                         -- agar post mavzusi o'chirilsa postlar ham o'chadi
    FOREIGN KEY (`author_id`)                      -- shu jadval, shu ustunga tashqi kalit o'rnatilsin (boshqa jadvaldan shu ustunga ma'lumotlar JOIN qilinsin)
        REFERENCES `blog_task`.`author` (`id`)     -- qaysiki `author` jadvali id si bilan mos keladigan (tepadagi ustunga shu ustun ulansin)
        ON DELETE CASCADE                          -- agar muallif o'chirilsa postlari ham o'chirilsin
);

INSERT INTO `blog_task`.`post` (`theme_id`, `title`, `img_url`, `content`, `author_id`)
VALUES ('2', 'Post sarlavhasi', '/assets/images/banner-item-01.jpg',
        'Post mazmuni', 4);
;

#  `comments_count` INT UNSIGNED DEFAULT 0 COMMENT "postga yozilgan izohlar soni", COUNT(*) orqali chiqariladi
#     comment lar uchun alohida jadval kerak
#  `comments`       TEXT COMMENT 'postga berilgan izohlar, maksimum 65 536 belgi',