<?php
//se establece una conexion a la base de datos

//si se han enviado datos
if (isset($_POST['usuario']) and isset($_POST['password'])){
	include 'conexion.php';
    $usuarios=mysqli_real_escape_string($conexion,$_POST['usuario']);
    $contraseñas=password_hash($_POST['password'],PASSWORD_DEFAULT);
    $ingresar=mysqli_query($conexion,'insert into nombre(usuario,password) values("'.$usuarios.'","'.$contraseñas.'")') or die ('<p>Error al registrar</p><br>'.mysqli_error($conexion));
    //redirección
    echo "Datos REgistrados";
   header ('location: iniciar_session.php');
}//si no se enviaron datos
else{
    
    echo "Datos no Almacenados";
}
?>