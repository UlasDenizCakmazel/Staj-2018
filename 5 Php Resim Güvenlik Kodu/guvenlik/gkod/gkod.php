<?php
session_start();
header("Content-type:image/png");
$alan=imagecreatetruecolor(100,40);
$red=imagecolorallocate($alan,255,0,0);
$black=imagecolorallocate($alan,0,0,0);
$blue=imagecolorallocate($alan,0,0,255);

imagefill($alan,0,0,$red);

imageline($alan,0,10,100,10,$blue);
imageline($alan,0,20,100,20,$blue);
imageline($alan,0,30,100,30,$blue);

$sayi=rand(1000,9999);
$_SESSION["gkod"]=$sayi;
imagettftext($alan,30,0,10,35,$black,"font1.ttf",$sayi);

imagepng($alan);
imagedestroy($alan);






?>