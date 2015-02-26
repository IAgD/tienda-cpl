<?php include 'config.inc';?>
<?php 

	session_start();
	$suma = 0;


	if(isset($_GET['p'])){
		$_SESSION['producto'][$_SESSION['contador']] = $_GET['p'];
		$_SESSION['cantidad'][$_SESSION['contador']] = $_GET['cant'];
		$_SESSION['contador']++;
	}

	$conn = mysqli_connect($servidor,$usuario,$contrasena,$baseDatos);

	for($i=0; $i < $_SESSION['contador'];$i++){
		//echo "Producto :".$_SESSION['producto'][$i]."<br>";
		$consulta = "SELECT * FROM productos WHERE id=".$_SESSION['producto'][$i];

		$resultado = mysqli_query($conn,$consulta);

		while($item = mysqli_fetch_array($resultado)){
			echo "<table>";
			echo "<tr><td>".$_SESSION['cantidad'][$i]."</td><td>".$item['nombre']."</td><td>".number_format(($_SESSION['cantidad'][$i]*$item['precio']),2)."</td></tr>";
			$suma += $item['precio']*$_SESSION['cantidad'][$i];
		}
	}
		echo "<tr id='total'><td>SubTotal: </td><td></td><td>$ ".number_format($suma,2)."</td></tr>";
	echo "</table>";

	mysqli_close($conn);
 ?>