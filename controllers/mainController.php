<?php
$pathModel = __DIR__ . '/../models/mainModel.php';
if (file_exists($pathModel)) {
    require ($pathModel);
//    echo __FILE__ . " ulangan <br>";
} else {
    echo "Xatolik: models/mainModel.php fayli ulanmadi!";
}

$menus = getMenuItems();
//echo "<pre>";
//print_r($menus);
//echo "</pre>";