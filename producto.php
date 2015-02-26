<?php include 'php/cabecera.inc'; ?>
<?php include 'php/config.inc';?>

<?php
  	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT * FROM productos WHERE id=".$_GET['id'];

	$resultado = mysqli_query($conn,$consulta);

	while($item = mysqli_fetch_array($resultado)){
		echo "<article>";
		echo "<a href='producto.php?id=".$item['id']."'><h3>".$item['nombre']."</h3></a>";
		echo "<p>".$item['descripcion']."</p>";
		echo "<p>Precio: $".$item['precio']."</p>";

			//Segmento para la carga de imagenes
			$consulta2 = "SELECT * FROM imagenesproductos WHERE id_producto=".$item['id'];
			$resultado2 = mysqli_query($conn,$consulta2);
			while ($image = mysqli_fetch_array($resultado2)) {
				echo "<img src='photo/".$image['imagen']."'> ";
			}

		echo "<br><a href='producto.php?id=".$item['id']."'><button>+Info</button></a> ";
		echo "<button>Purchase</button>";
		echo "</article><hr>";
	}
	mysqli_close($conn);
?>
	
<?php include 'php/piedepagina.inc'; ?>