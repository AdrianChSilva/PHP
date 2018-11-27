<?php 
include_once 'libs/usuario.php';
include_once 'libs/sesion_usuario.php';

$userSesion = new SesionUsuario();
$user = new Usuario();

if (isset($_SESSION['usuario'])) {
	//cuando cerramos el navegador y no cerramos sesion
	//activaremos esta condicion
	$user->setUsuario($userSesion->getCurrentUser());
	include_once 'vistas/home.php';
	
}else if(isset($_POST['usuario']) && isset($_POST['contraseña'])){
	$userForm = $_POST['usuario'];
	$passForm = $_POST['contraseña'];

	if ($user->existeUsuario($userForm, $passForm)) {
		$userSesion->setCurrentUser($userForm);//con esto no perderemos la sesion 
		$user->setUsuario($userForm);

		include_once 'vistas/home.php';
	}else {
		$errorLogin = "Nombre de usuario y/o contraseña es incorrecto";
		include_once 'vistas/login.php';
	}

}else{
	include_once 'vistas/login.php';
}
?>
