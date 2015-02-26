<?php include '../php/config.inc';?>

<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "UPDATE productos SET 
					nombre='".$_POST['nombre']."', 
					precio='".$_POST['precio']."',
					peso='".$_POST['peso']."', 
					longitud='".$_POST['longitud']."',
					anchura='".$_POST['anchura']."',
					altura='".$_POST['altura']."',
					existencias='".$_POST['existencias']."',
					activado='".$_POST['activado']."'
			    WHERE id='".$_GET['id']."'";

	$resultado = mysqli_query($conn,$consulta);
	
	mysqli_close($conn);
?>

<script type="text/javascript">
	window.location = "productos.php";
</script>