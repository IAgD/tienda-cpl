<?php include 'cabecera.inc' ?>
<?php include '../php/config.inc'; ?>
<table>
<?php 
	$contador = 0;

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT * FROM clientes";

	$resultado = mysqli_query($conn,$consulta);
	echo "<thead>
			<th>Nombre</th>
			<th>Apellidos</th>
			<th>Email</th>
			<th>Usuario</th>
			<th>Contraseña</th>
			<th>Telefono</th>
			<th>Movil</th>
			<th>Fax</th>
			<th>Direccion</th>
			<th>C.P</th>
			<th>Poblacion</th>
			<th>Pais</th>
			<th>DNINIF</th>
		  </thead>
		  <tbody>";
	while($item = mysqli_fetch_array($resultado)){
		echo '<tr';
		if($contador == 1){echo "class='sombreado' ";}
		echo '>';
			echo'<form action="actualizarcliente.php?id='.$item['id'].'" method="post">
					 <td><input type="text" name="nombre" value="'.$item['nombre'].'"></td>
					 <td><input type="text" name="apellidos" value="'.$item['apellidos'].'"></td>
					 <td><input type="text" name="email" value="'.$item['email'].'"></td>
					 <td><input type="text" name="usuario" value="'.$item['usuario'].'"></td>
					 <td><input type="text" name="contrasena" value="'.$item['contrasena'].'"></td>
					 <td><input type="text" name="telefono" value="'.$item['telefono'].'"></td>
					 <td><input type="text" name="movil" value="'.$item['movil'].'"></td>
					 <td><input type="text" name="fax" value="'.$item['fax'].'"></td>
					 <td><input type="text" name="direccioncalle" value="'.$item['direccioncalle'].'"></td>
					 <td><input type="text" name="codigo_postal" value="'.$item['codigo_postal'].'"></td>
					 <td><input type="text" name="poblacion" value="'.$item['poblacion'].'"></td>
					 <td><input type="text" name="pais" value="'.$item['pais'].'"></td>
					 <td><input type="text" name="dninif" value="'.$item['dninif'].'"></td>
					 <td><input type="submit" class="btn" value="Actualizar"></td>
				</form>
					 <td><a href="eliminarcliente.php?id='.$item['id'].'"><button>Eliminar</button></a></td>
			 </tr>';	
	}

	if($contador == 0){$contador++;}else{$contador--;}


	mysqli_close($conn);
?>
    <tr>
		<form action="nuevocliente.php" method="post">
			<td><input type="text" name="nombre"></td>
			<td><input type="text" name="apellidos"></td>
			<td><input type="text" name="email"></td>
			<td><input type="text" name="usuario"></td>
			<td><input type="text" name="contrasena"></td>
			<td><input type="text" name="telefono"></td>
			<td><input type="text" name="movil"></td>
			<td><input type="text" name="fax"></td>
			<td><input type="text" name="direccioncalle"></td>
			<td><input type="text" name="codigo_postal"></td>
			<td><input type="text" name="poblacion"></td>
			<td><input type="text" name="pais"></td>
			<td><input type="text" name="dninif"></td>
			<td><input type="submit" class="btn"></td>
			<td></td>
		</form>
	</tr>
	</tbody>
</table>
<?php include 'piedepagina.inc' ?>