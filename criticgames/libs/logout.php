<?php
    include_once 'sesion_usuario.php';
    $userSession = new SesionUsuario();
    $userSession->closeSession();
    header("location: ../index.php");
?>