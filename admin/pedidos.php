<?php include 'cabecera.inc' ?>
<?php include '../php/config.inc'; ?>
<table>
<?php 

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	$consulta = "SELECT pedidos.id AS idpedido, fecha, estado, nombre, apellidos FROM pedidos LEFT JOIN clientes ON pedidos.id_cliente = clientes.id ORDER BY estado , fecha ASC";

	$resultado = mysqli_query($conn,$consulta);

	while($item = mysqli_fetch_array($resultado)){
		$estado = $item['estado'];

		/*if($estado == 0){$status = 'No servido';}
		  else{$status = 'Servido';} SUSTITUCION DE SWITCH POR 3ER ESTADO*/

		switch ($estado) {
			case 0:
				$status = 'No servido';break;
			case 1:
				$status = 'Servido';break;

			case 2:
				$status = 'Cancelado';break;
		}


		echo '<tr';
		switch ($estado) {
			case 0:echo ' style="background: rgb(255,200,200);"';break;
			case 1:echo ' style="background:rgb(200,255,200);"';break;
     		case 2:echo ' style="background:rgb(255,255,200);"';break;
		}

		echo'><td>'.$item['nombre']." ".$item['apellidos'].'</td><td>'.date("M d Y H:i:s",$item['fecha']).'</td><td>'.$status.'</td><td><a href="gestionpedido.php?id='.$item['idpedido'].'"><button>Gestionar</button></a></td><td><a href="../php/pedidoservido.php?id='.$item['idpedido'].'"><button>Pedido servido</button></a></td><td><a href="../php/cancelarpedido.php?id='.$item['idpedido'].'"><button>Cancelar Pedido</button></a></td></tr>';	
	}

	mysqli_close($conn);
?>
</table>
<?php include 'piedepagina.inc' ?>