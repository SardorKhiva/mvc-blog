<?php
// views/index.php

$pathController = __DIR__ . '/../controllers/mainController.php';
if (file_exists($pathController)) {
    require $pathController;
//    echo __FILE__ . "<br>";
} else {
    echo $pathController . ' ulanmagan' . "<br>";
}

/*
  require qilinadigan php lar tartibi:
1 head
2 preloader
3 header
4 banner
5 sections
6 footer
7 js_scripts
*/
// bazi sahifalarni takror yuklash uchun require ni o'zi ishlatiladi,
// require_once bilan ishlatilsa faqat 1 marta yuklanadi va keyingi sahifaga yuklanmaydi!
require __DIR__ . '/index-widgets/head.php';
require __DIR__ . '/index-widgets/preloader.php';
require __DIR__ . '/index-widgets/header.php';
require __DIR__ . '/index-widgets/banner.php';
require __DIR__ . '/index-widgets/sections.php';
require __DIR__ . '/index-widgets/footer.php';
require __DIR__ . '/index-widgets/js_scripts.php';