<?php
// index.php
// --- Asosiy, 1-sahifa ---

$configPath = __DIR__ . '/config.php';
$indexPath = __DIR__ . '/views/index.php';

// bazaga ulanish
if (file_exists($configPath)) {
    require $configPath;
//    echo "Loyiha ma'lumotlar bazasiga ulangan <br>"; // MySQL ga ulangan-ulanmaganligini tekshirish
} else {
    echo "Loyiha ma'lumotlar bazasiga ulanmagan <br>";
}

// contenni yuklash
if (file_exists($indexPath)) {
    require $indexPath;
} else {
    echo "$indexPath ulanmagan <br>";
}