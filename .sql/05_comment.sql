# DROP DATABASE IF EXISTS `blog_task`;        -- agar baza mavjud bo'lsa o'chirish
CREATE DATABASE IF NOT EXISTS `blog_task`;
-- agar baza mavjud bo'lmasa hosil qilish
# USE `blog_task`;                            -- hosil qilingan bazadan foydalanish
# DROP TABLE IF EXISTS `blog_task`.`comment`; -- postlar uchun izohlar jadvalini hosil qilish


# DROP TABLE IF EXISTS `blog_task`.`comment`;

# TRUNCATE TABLE `blog_task`.`comment`;

CREATE TABLE IF NOT EXISTS `blog_task`.`comment`
(
    `id`         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY COMMENT 'comment id si',
    `post_id`    INT UNSIGNED NOT NULL,
    `author`     VARCHAR(255) COMMENT 'izoh muallifi',
    `content`    TEXT         NOT NULL COMMENT 'izoh mazmuni',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "izoh yozilgan vaqti",
    FOREIGN KEY (`post_id`)                  -- shu jadvaldagi post_id ustuni tashqi kalit ulansin
        REFERENCES `blog_task`.`post` (`id`) -- qaysiki blog_task bazasi, post jadvalidagi id ustuniga
        ON DELETE CASCADE                    -- agar post o'chirilsa, commentlar ham o'chirilsin
);

SELECT *
FROM `blog_task`.`comment`;