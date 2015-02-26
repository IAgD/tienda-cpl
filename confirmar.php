<?php include 'php/cabecera.inc'; ?>
<br>
<br>
¿Ya eres usuario?<br>
<form action="php/logcliente.php" method="post">
	<input type="text" name="usuario" placeholder="Introduce tu usuario">
	<input type="text" name="contrasena" placeholder="Introduce tu contraseña">
	<br>
	<input type="submit">
	<input type="reset">
</form>
¿Eres nuevo usuario?
<form action="php/nuevoclienteweb.php" method="post">
	<input type="text" name="usuario" placeholder="usuario"><br>
	<input type="text" name="contrasena" placeholder="contraseña"><br>
	<input type="text" name="nombre" placeholder="nombre"><br>
	<input type="text" name="apellidos" placeholder="apellidos"><br>
	<input type="text" name="email" placeholder="email"><br>
	<input type="submit">
</form>


<?php include 'php/piedepagina.inc'; ?>