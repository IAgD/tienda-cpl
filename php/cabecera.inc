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
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="js/codigo.js"></script>
</head>
<body>
	<div id="contenedor">
		<header>
			<a href="index.php"><h1>Tienda</h1></a>
		</header>
		<section>
			<div id="contienecarrito">
				<div id="carrito">Carrito </div>
				<a href="php/vaciar.php"><button>Vaciar carrito</button></a>
				<a href="confirmar.php"><button>Confirmar compra</button></a>
				<br>
			</div>