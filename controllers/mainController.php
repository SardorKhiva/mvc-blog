<?php
$pathModel = __DIR__ . '/../models/mainModel.php';
if (file_exists($pathModel)) {
    require($pathModel);
//    echo __FILE__ . " ulangan <br>";
} else {
    echo "Xatolik: models/mainModel.php fayli ulanmadi!";
}

// asosiy controller ga tepadagi menyu va pastdagi ijtimoiy tarmoqlar
// bilan ishlovchi obyektlarni qo'shish
$menus = getMenuItems();
$socials = getSocials();
$posts = getPosts();

//echo "<pre>";
//print_r($menus);
//echo "</pre>";