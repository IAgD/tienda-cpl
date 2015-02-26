<?php 

session_start();

if(!isset($_SESSION['contador'])){
	$_SESSION['contador']=0;
}

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="refresh" content="439843984938984398">
	<title>Tienda</title>
	<link rel="stylesheet" type="text/css" href="stylesADMIN.css">
</head>
<body>
	<div id="contenedor">
		<header>
			<a href="index.php"><h1>Panel de Control</h1></a>
			<h2>Tienda  Online</h2>

			<a href="pedidos.php" class="botonMenu">Gestionar pedidos</a>
			<a href="clientes.php" class="botonMenu">Gestionar clientes</a>
			<a href="productos.php" class="botonMenu">Gestionar productos</a>
			<a href="estadisticas.php" class="botonMenu">Obtener estadisticas</a>
			<div style="clear:both;"></div>
		</header>
		<section>