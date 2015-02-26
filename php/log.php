<?php include 'config.inc';?>

<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "INSERT INTO registros VALUES(
		'".date('U')."',
		'".date('Y')."',
		'".date('m')."',
		'".date('d')."',
		'".date('H')."',
		'".date('i')."',
		'".date('s')."',
		'".$_SERVER['REMOTE_ADDR']."',
		'".$_SERVER['HTTP_USER_AGENT']."',
		'".$_SERVER['REQUEST_URI']."'
	)";

	$resultado = mysqli_query($conn,$consulta);
	
	mysqli_close($conn);
?>
