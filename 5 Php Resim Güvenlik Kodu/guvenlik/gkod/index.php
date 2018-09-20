<?php
	session_start();
	include "../ayar.php";
	if($_POST)
	{
	if($_SESSION["gkod"]==$_POST["gkodu"])
	{
		if(@$_POST["btngiris"]=="Giriş")
		{
			$k=$_POST["kuladi"];
			$s=$_POST["sifre"];
			$sql=mysql_query("select * from uye where kulad='$k' and sifre='$s' and seviye=1 ");
			//mysql_num_rows($sql) sql çekilen kayıt sayısını ver
			$adet=mysql_num_rows($sql);
			if($adet==0)
			{
				echo "<script>('Hatalı Giriş yaptınız. Lütfen tekrar deneyin.')</script>";
			}
			else{
				$_SESSION["yonetici"]=$k;
				header("Location:admin.php");
			}
			
		}
	}
	else{
		echo "Güvenlik Kodu Yanlış";
	}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>kimbu.kim Admin Giriş</title>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/admin-style.css">
</head>

<body>
<h1>Giriş Yap</h1>
 <form action="" method="post">
	<table id='tablo'>
    	<tr>
        	<td>Kullanıcı Adı: </td>
            <td><input type="text" name="kuladi"></td>
        </tr>
    	<tr>
        	<td>Şifre:</td>
            <td><input type="password" name="sifre" /></td>
        </tr>
		<tr>
			<td><img src="gkod.php"></td>
			<td><input type="text" name="gkodu"/></td>
		</tr>
    	<tr>
        	<td></td>
            <td><a href="#">Şifremi Unuttum</a></td>
        </tr>
    	<tr>
        	<td></td>
            <td><input type="submit" name="btngiris" value="Giriş" /></td>
        </tr>
	</table>
 </form>
</body>
</html>