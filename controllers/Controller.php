<?php
$pathModel = __DIR__ . '/../models/Model.php';
if (file_exists($pathModel)) {
    require ($pathModel);
//    echo __FILE__ . " ulangan <br>";
} else {
    echo "Xatolik: models/Model.php fayli ulanmadi!";
}