<?php include 'php/cabecera.inc'; ?>
<?php include 'php/config.inc';?>
	
<?php
	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT * FROM productos WHERE existencias > 0 ";

	$resultado = mysqli_query($conn,$consulta);

	while($item = mysqli_fetch_array($resultado)){
		echo "<article>";

		//Segmento para la carga de imagenes
		$consulta2 = "SELECT * FROM imagenesproductos WHERE id_producto=".$item['id']." LIMIT 1";
		$resultado2 = mysqli_query($conn,$consulta2);
		while ($image = mysqli_fetch_array($resultado2)) {
			echo "<img src='photo/".$image['imagen']."'><br>";
		}

		echo "<a href='producto.php?id=".$item['id']."'><h3>".$item['nombre']."</h3></a>";
		echo "<p>".$item['descripcion']."</p>";
		echo "<p>Precio: $".$item['precio']."</p>";
		echo "<input type='number' min='1' max='5' id='num".$item['id']."' value='1'>";
		echo "<br><a href='producto.php?id=".$item['id']."'><button>+Info</button></a> ";
		echo "<button value=".$item['id']." class='btncompra'>Purchase</button>";
		echo "</article><hr>";
	}
	mysqli_close($conn);
?>

<?php include 'php/piedepagina.inc'; ?>


