<?php

include '../libs/database.php';

if (!empty($_POST['nombre']) && !empty($_POST['nick']) && !empty($_POST['email']) && !empty($_POST['clave']) && !empty($_POST['password-confirm'])) {
    if ($_POST['clave'] == $_POST['password-confirm']) {

        $query = "SELECT idUsuario FROM usuarios WHERE email ='" . $_POST['email'] . "'";
        $consul = mysqli_query($conn, $query);
        $results = mysqli_fetch_array($consul);

        if (!$results) {

            $query = "INSERT INTO usuarios (nombre, nick, email, clave) VALUES ('" . $_POST['nombre'] . "', '" . $_POST['nick'] . "', '" . $_POST['email'] . "', '" . $_POST['clave'] . "')";
            $consul = mysqli_query($conn, $query);

            $message = 'Usuario creado satisfactoriamente';
        } else {
            $message = 'el email ya existe';
        }
    } else {
        $message = "La contraseña no coincide";
    }

} else {
    $message = "usuario no creado. ERROR";
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Registro</title>
	<meta charset="utf-8" />

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<!--Hoja CSS-->
	<link href="css/registrocss.css" rel="stylesheet" type="text/css">

	<!-- Para trabajar con AJAX necesitamos importar el archivo JQUERY sin comprimir -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
	<?php if (!empty($message)): ?>
		<p><?php echo $message ?></p>
	<?php endif;?>
	<div class="container">
		<form class="form-horizontal"  method="POST" action="registro.php">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<h2>Registrar nuevo usuario</h2>
					<hr>
				</div>
			</div>
			<!--Nombre-->
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="name">Nombre</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
							<input type="text" class="form-control" name="nombre"
							placeholder="Nombre y apellidos" required autofocus>
						</div>
					</div>
				</div>
			</div>
			<!--Usuario -->
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="name">Usuario</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
							<input type="text" class="form-control" name="nick"
							placeholder="Usuario" required autofocus>
						</div>
					</div>
				</div>
			</div>

			<!--Email -->
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="email">E-Mail</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
							<input type="email" class="form-control" name="email"
							placeholder="tucorreo@ejemplo.com" required autofocus>
						</div>
					</div>
				</div>
			</div>
			<!--Contraseña -->
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="password">Contraseña</label>
				</div>
				<div class="col-md-6">
					<div class="form-group has-danger">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
							<input type="password" class="form-control" name="clave"
							placeholder="Contraseña" required>
						</div>
					</div>
				</div>
			</div>
			<!--Confirma contraseña -->
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="password">Confirmar contraseña</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem">
								<i class="fa fa-repeat"></i>
							</div>
							<input type="password"  class="form-control"
							name="password-confirm" placeholder="Confirma la contraseña" required>
						</div>
					</div>
				</div>
			</div>
			<!-- -->
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<button type="submit" class="btn btn-success"><i class="fa fa-user-plus"></i> Registrarse</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>