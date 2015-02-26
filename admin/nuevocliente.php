<?php include '../php/config.inc';?>

<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "INSERT INTO clientes VALUES(NULL,'".$_POST['nombre']."','".$_POST['apellidos']."','".$_POST['email']."','".$_POST['usuario']."','".$_POST['contrasena']."','".$_POST['telefono']."','".$_POST['movil']."','".$_POST['fax']."','".$_POST['direccioncalle']."','".$_POST['codigo_postal']."','".$_POST['poblacion']."','".$_POST['pais']."','".$_POST['dninif']."')";


	$resultado = mysqli_query($conn,$consulta);
	
	mysqli_close($conn);
?>

<script type="text/javascript">
	window.location = "clientes.php";
</script>