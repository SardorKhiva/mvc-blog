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
if (!empty(getMenuItems())) {
    $menus = getMenuItems();
} else {
    echo "Xatolik: menus asosiy controllerga ulanmadi!";
}

if (!empty(getSocials())) {
    $socials = getSocials();
} else {
    echo "Xatolik: socials asosiy controllerga ulanmadi!";
}

if (!empty(getBanners())) {
    $posts = getBanners();
} else {
    echo "Xatolik: posts asosiy controllerga ulanmadi!";
}

//echo "<pre>";
//print_r($menus);
//echo "</pre>";