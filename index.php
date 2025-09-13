<?php
// index.php
// --- Asosiy, 1-sahifa ---

$indexPath = __DIR__ . '/views/index.php';

// bazaga ulanish
if (file_exists('config.php')) {
    require 'config.php';
} else {
    echo "Loyiha ma'lumotlar bazasiga ulanmagan <br>";
}

// contenni yuklash
if (file_exists($indexPath)) {
    require $indexPath;
} else {
    echo "$indexPath ulanmagan <br>";
}
