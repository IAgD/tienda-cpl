<?php include 'config.inc';?>
<?php

include 'cabecera.inc';

	$contador = 0;
	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT * FROM clientes WHERE usuario= '".$_REQUEST['usuario']."' AND contrasena = '".$_REQUEST['contrasena']."'";

	$resultado = mysqli_query($conn,$consulta);

	while($item = mysqli_fetch_array($resultado)){
		$contador++;
		$_SESSION['usuario'] = $item['id'];	
	}

	if($contador > 0 ){
		$consulta = "INSERT INTO pedidos VALUES (NULL,".$_SESSION['usuario'].",'".date('U')."','0')";
		$resultado = mysqli_query($conn,$consulta);

		$consulta = "SELECT * FROM pedidos WHERE id_cliente ='".$_SESSION['usuario']."' ORDER BY fecha DESC LIMIT 1";
		$resultado = mysqli_query($conn,$consulta);

		while($item = mysqli_fetch_array($resultado)){
			$_SESSION['idpedido']=$item['id'];
		}
		echo $_SESSION['idpedido'];

		for($i=0; $i < $_SESSION['contador'];$i++){
			$consulta ="INSERT INTO lineaspedido VALUES (NULL,'".$_SESSION['idpedido']."','".$_SESSION['producto'][$i]."','".$_SESSION['cantidad'][$i]."')";
			$resultado = mysqli_query($conn,$consulta);

			$consulta ="SELECT * FROM productos WHERE id='".$_SESSION['producto'][$i]."'";
			$resultado = mysqli_query($conn,$consulta);

			while($item = mysqli_fetch_array($resultado)){
				$existencias = $item['existencias'];

				$consulta2 ="UPDATE productos SET existencias = '".($existencias-1)."' WHERE id='".$_SESSION['producto'][$i]."'";
			    $resultado2 = mysqli_query($conn,$consulta2);
			}

		}

		

		echo "<br>Tu pedido se ha realizado satisfactoriamente =).<br>Redirigiendo a la pagina principal en 5 segundos...";
		
		session_destroy();
		//echo '<meta http-equiv="refresh" content="5"; url="../index.php>"';
		echo "<meta http-equiv='refresh' content='5; url=../index.php'>";
		

	}else{
		echo "<br><br>El usuario NO existe. Volviendo a la tienda en 5 segundos";
		echo "<meta http-equiv='refresh' content='5; url=../confirmar.php'>";
	}
	mysqli_close($conn);
	include 'piedepagina.inc';
?>