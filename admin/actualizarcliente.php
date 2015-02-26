<?php include '../php/config.inc';?>

<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "UPDATE clientes SET 
					nombre ='".$_POST['nombre']."',
					apellidos ='".$_POST['apellidos']."',
					email ='".$_POST['email']."',
					usuario ='".$_POST['usuario']."',
					contrasena ='".$_POST['contrasena']."',
					telefono ='".$_POST['telefono']."',
					movil ='".$_POST['movil']."',
					fax ='".$_POST['fax']."',
					direccioncalle ='".$_POST['direccioncalle']."',
					codigo_postal ='".$_POST['codigo_postal']."',
					poblacion ='".$_POST['poblacion']."',
					pais ='".$_POST['pais']."',
					dninif ='".$_POST['dninif']."'
			    WHERE id='".$_GET['id']."'";

	$resultado = mysqli_query($conn,$consulta);
	
	mysqli_close($conn);
?>

<script type="text/javascript">
	window.location = "clientes.php";
</script>