<?php include '../php/config.inc';?>

<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "DELETE FROM productos WHERE id=".$_GET['id']."";

	$resultado = mysqli_query($conn,$consulta);
	
	mysqli_close($conn);
?>

<script type="text/javascript">
	window.location = "productos.php";
</script>