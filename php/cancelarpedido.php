<?php include 'config.inc';?>

<?php
	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "UPDATE pedidos SET estado = 2 WHERE id='".$_GET['id']."'";

	$resultado = mysqli_query($conn,$consulta);

	mysqli_close($conn);
?>

<script type="text/javascript">
	
	window.location = "../admin/pedidos.php";

</script>