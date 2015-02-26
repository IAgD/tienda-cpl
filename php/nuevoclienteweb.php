<?php include 'config.inc';?>

<?php 
	
	$contador=0;

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT * FROM clientes WHERE usuario='".$_POST['usuario']."'";
	$resultado = mysqli_query($conn,$consulta);

		while($item=mysqli_fetch_array($resultado)){
			$contador++;
		}

	if($contador == 0){

		$consulta = "INSERT INTO clientes VALUES(
		NULL,
		'".$_POST['nombre']."',
		'".$_POST['apellidos']."',
		'".$_POST['email']."',
		'".$_POST['usuario']."',
		'".$_POST['contrasena']."',
		'',
		'',
		'',
		'',
		'',
		'',
		'',
		'')";

		$resultado = mysqli_query($conn,$consulta);
		
		mysqli_close($conn);

		echo '<script type="text/javascript">
				 window.location ="logcliente.php?usuario='.$_POST['usuario'].'&contrasena='.$_POST['contrasena'].'";
			  </script>';

	}else{
		echo "<script>alert('ESTE NOMBRE DE USUARIO YA ESTA SIENDO UTILIZADO');</script>";
		echo '<script type="text/javascript">
			 window.location ="../confirmar.php";
		  </script>';
	}


?>