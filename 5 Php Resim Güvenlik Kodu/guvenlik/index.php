<?php
	session_start();
	//include "../ayar.php";
	if($_POST)
	{
	if($_SESSION["gkod"]==$_POST["gkodu"])
	{
		header("Location:gkod/gkod.php");
	}
	else{
		echo "<script>alert('Güvenlik Kodu Yanlış')</script>";
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
			<td><img src="gkod/gkod.php"></td>
			<td><input type="text" name="gkodu"/></td>
		</tr>
    	<tr>
        	<td></td>
            <td><input type="submit" name="btngiris" value="Giriş" /></td>
        </tr>
	</table>
 </form>
</body>
</html>