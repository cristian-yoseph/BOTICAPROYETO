
<?php 
session_start();
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registro</title>
</head>
<body>

	<form action="insertar.php" method="POST">
		<label for="caja1"><p>Nombre De Usuario</p>
			<p><input  type="text" name="usuario" placeholder="nombre" id="caja1" required autofocus=""></p>
		</label>
		<label for="caja2"><p>Password</p>
			<p><input type="password" name="password" id="caja2" required placeholder ="password"></p>
		</label>
		<input type="submit" value="Registrarse">
		

	</form>

</body>
</html>