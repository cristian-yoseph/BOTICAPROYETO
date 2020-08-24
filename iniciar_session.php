      <!--modal para iniciar sesión-->

         <h2>Iniciar sesión</h2>
  
    
          <form action="archivo_destino.php" method="post" enctype="application/x-www-form-urlencoded">
      
              <label for="control1_nombre">Usuario</label>
              <input type="text" name="datos_introducidos_usuario" class="form-control" id="control1_nombre" placeholder="Username" required>
         
              <label for="control1_contraseña">Contraseña</label>
              <input type="password" name="datos_introducidos_contraseña" class="form-control" id="control1_contraseña" placeholder="Password" required>
            
            <button type="submit" class="btn btn-success btn-block">Entrar</button>
          </form>