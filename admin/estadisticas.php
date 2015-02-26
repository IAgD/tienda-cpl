<?php include 'cabecera.inc' ?>
<?php include '../php/config.inc'; ?>

<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT `id_producto`,productos.nombre ,COUNT(`id_producto`) FROM `lineaspedido` LEFT JOIN productos ON lineaspedido.id_producto = productos.id GROUP BY `id_producto` ORDER BY COUNT(`id_producto`) DESC LIMIT 1";

	$resultado = mysqli_query($conn,$consulta);
	
	while($item = mysqli_fetch_array($resultado)){
		echo "El producto mas comprado es: ".$item['nombre'];
	}

	echo'<br>
	Los productos mas comprados
	<table>';

	$consulta = "SELECT `id_producto`,productos.nombre ,COUNT(`id_producto`) FROM `lineaspedido` LEFT JOIN productos ON lineaspedido.id_producto = productos.id GROUP BY `id_producto` ORDER BY COUNT(`id_producto`) DESC ";

	$resultado = mysqli_query($conn,$consulta);
	
	while($item = mysqli_fetch_array($resultado)){
		echo '<tr>
			  	  <td>'.$item['nombre'].'</td>
			 	  <td>'.$item[COUNT(`id_producto`)].'</td>
			  </tr>';
	}

	echo '</table>';

	$consulta = "SELECT clientes.nombre, apellidos, sum(unidades*precio) AS 'Compra Total' FROM `pedidos` LEFT JOIN lineaspedido ON pedidos.id = lineaspedido.id_pedido LEFT JOIN productos ON lineaspedido.id_producto = productos.id LEFT JOIN clientes ON pedidos.id_cliente = clientes.id GROUP BY id_cliente ORDER BY sum(precio) DESC LIMIT 1 ";

	$resultado = mysqli_query($conn,$consulta);
	
	while($item = mysqli_fetch_array($resultado)){
		echo 'El mejor cliente de la tienda es '.$item['nombre'].' '.$item['apellidos'].', Ya que se ha gastado: $'.$item['Compra Total'];
	}

	//TOP TEN DE CLIENTES
	echo'<br>
	Los mejores clientes
	<table>';

	$consulta = "SELECT clientes.nombre, apellidos, sum(unidades*precio) AS 'Compra Total' FROM `pedidos` LEFT JOIN lineaspedido ON pedidos.id = lineaspedido.id_pedido LEFT JOIN productos ON lineaspedido.id_producto = productos.id LEFT JOIN clientes ON pedidos.id_cliente = clientes.id GROUP BY id_cliente ORDER BY sum(precio) DESC LIMIT 10 ";

	$resultado = mysqli_query($conn,$consulta);
	
	while($item = mysqli_fetch_array($resultado)){
		echo '<tr>
			  	  <td>'.$item['nombre'].' '.$item['apellidos'].'</td>
			 	  <td>'.$item['Compra Total'].'</td>
			  </tr>';
	}

	echo '</table>';
	
	mysqli_close($conn);
?>
<?php include 'piedepagina.inc' ?>


    