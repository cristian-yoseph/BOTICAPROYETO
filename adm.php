<?php


include 'conexion.php';
  ?>



<!DOCTYPE html>
<html lang="en">
  <head>
  </head>
  <body>
  	<h2>Datos de Administrador
  	<tr></h2>
  	<table border="1">
  		<td>id</td>
  		<td>Nombre</td>
  		<td>Apellido</td>
  		<td>Sexo</td>
  		<td>Direccion</td>
  		<td>Telefono</td>
  	</tr>
        


<?php  		
			$conexion=mysqli_connect('localhost','root','','sistema_botica') or die ('Error al conectar BD');
  
			$sql = "SELECT * FROM administrador";
            $result =mysqli_query($conexion,$sql);
            while ($mostrar=mysqli_fetch_array($result)) {
?>
			<tr>
				<td><?php echo $mostrar['Id_adm']; ?></td>
				<td><?php echo $mostrar['nombre_adm']; ?></td>
				<td><?php echo $mostrar['apellido_adm']; ?></td>
				<td><?php echo $mostrar['sexo_amd']; ?></td>
				<td><?php echo $mostrar['direccion_adm']; ?></td>
				<td><?php echo $mostrar['tefefono_adm']; ?></td>
			</tr>

<?php 
}

 ?>
 </table>
</body>
</html>


