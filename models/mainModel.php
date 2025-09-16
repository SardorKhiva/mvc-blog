<?php
// asosiy model fayli

// constantalarni import qilish
if (file_exists(__DIR__ . '/../constants.php')) {
    require_once __DIR__ . '/../constants.php';
} else {
    echo "Asosiy constantalar fayli mavjud emas!\n";
}

//echo __FILE__ . "<br>";   // fayl ulanganligini tekshirish uchun

// menu modelini qo'shish
if (file_exists(MENU_MODEL)) {
    require_once MENU_MODEL;
} else {
    echo "Menu modeli asosiy modelga qo'shilmagan\n";
}

// social networks ni qo'shish
if (file_exists(SOCIAL_MODEL)) {
    require_once SOCIAL_MODEL;
} else {
    echo "Social modeli asosiy modelga qo'shilmagan\n";
}

// postlar modelini asosiy modelga qo'shish
if (file_exists(POST_MODEL)) {
    require_once POST_MODEL;
} else {
    echo "Post modeli asosiy modelga qo'shilmagan\n";
}
