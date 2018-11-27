<!DOCTYPE html>
<html lang="es">
<head>
	<title>Gamescritic</title>

	<meta charset="utf-8" />

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<!--Hoja css "indexcss.css"-->
	<link href="css/indexcss.css" rel="stylesheet" type="text/css">

	<!-- Para trabajar con AJAX necesitamos importar el archivo JQUERY sin comprimir -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>

	<section class="login-block">
		<div class="container">
			<div class="row">
				<div class="col-md-4 login-sec">
					<h2 class="text-center">Logeate!</h2>
					<?php
					if (isset($errorLogin)) {
						echo $errorLogin;
					}
					
					?>
					<form class="login-form" action="index.php" method="post">
						<div class="form-group">
							<label for="name" class="text-uppercase">Usuario</label>
							<input type="text" class="form-control" name="usuario" placeholder="">

						</div>
						<div class="form-group">
							<label for="name" class="text-uppercase">Contraseña</label>
							<input type="password" class="form-control" name="contraseña" placeholder="">
						</div>


						<div class="form-check">
							<label class="form-check-label">
								<input type="checkbox" class="form-check-input">
								<small>Recuérdame</small> <!--En construcción-->
								
							</label>
							<button type="submit" class="btn btn-login float-right">Enviar</button> <br/>
							
						</div>

					</form>
					<div class="copy-text">¿No tienes cuenta? <a href="vistas/registro.php">Regístrate</a> </div> <!-- CAMBIAR ESTO-->
				</div>
				<div class="col-md-8 banner-sec">
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="imagenes/foto1.jpeg" alt="First slide">
								<div class="carousel-caption d-none d-md-block">
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="imagenes/foto2.jpeg" alt="First slide">
								<div class="carousel-caption d-none d-md-block">
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="imagenes/foto3.jpg" alt="First slide">
								<div class="carousel-caption d-none d-md-block">
								</div>
							</div>
						</div>	   

					</div>
				</div>
			</div>
		</section>

	</body>
	</html>