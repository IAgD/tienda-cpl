<?php include 'cabecera.inc' ?>
<?php include '../php/config.inc'; ?>
<table>
<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT * FROM productos";

	$resultado = mysqli_query($conn,$consulta);
	echo "<thead><th>Nombre</th><th>Precio</th><th>Peso</th><th>Dimenciones</th><th>Existencias</th><th>Estado</th><th></th><th></th></thead>";
	while($item = mysqli_fetch_array($resultado)){

		echo '<tr>';
			echo'<form action="actualizarproducto.php?id='.$item['id'].'" method="post">
					 <td><input type="text" name="nombre" value="'.$item['nombre'].'"></td>
					 <td><input type="text" name="precio" value="'.$item['precio'].'"></td>
					 <td><input type="text" name="peso" value="'.$item['peso'].'"></td>
					 <td><input type="text" name="longitud" value="'.$item['longitud'].'">x
					     <input type="text" name="anchura" value="'.$item['anchura'].'">x
					     <input type="text" name="altura" value="'.$item['altura'].'"></td>
					 <td><input type="text" name="existencias" value="'.$item['existencias'].'"></td>
					 <td><input type="text" name="activado" value="'.$item['activado'].'"></td>
					 <td><input type="submit" value="Actualizar"></td>
				</form>
					 <td><a href="eliminarproducto.php?id='.$item['id'].'"><button>Eliminar</button></a></td>
			 </tr>';	
	}

	mysqli_close($conn);
?>

<tr>											   <!--|v propiedad necesaria para poder identificar archivos diferentes a simple texto-->
	<form action="nuevoproducto.php" method="post" enctype="multipart/form-data">
		<td><input type="text" name="nombre"></td>
		<td><input type="text" name="precio"></td>
		<td><input type="text" name="peso"></td>
		<td><input type="text" name="longitud">x
			<input type="text" name="anchura">x
			<input type="text" name="altura"></td>
		<td><input type="text" name="existencias"></td>
		<td><input type="text" name="activado"></td>
		<td><input type="file" name="imagen"></td>
		<td><input type="submit"></td>
	</form>
</tr>
</table>
<?php include 'piedepagina.inc' ?>