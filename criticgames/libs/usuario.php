<?php
require_once "database.php";
class Usuario extends DB
{
    private $idUsuario;
    private $nombre;
    private $nick;
    private $clave;
    private $email;

    //Con esta funcion vamos a comprobar si existe
    //el usuario en la base de datos
    public function existeUsuario($user, $pass)
    {
        //esta es la preparacion
        $query = $this->connect()->prepare('SELECT * FROM usuarios WHERE nick = :user AND clave = :pass');
        //aqui ejecutamos la query
        $query->execute(['user' => $user, 'pass' => $pass]);

        if ($query->rowCount()) {
            return true;

        } else {
            return false;
        }
    }

    public function setUsuario($user)
    {
        $query = $this->connect()->prepare('SELECT * FROM usuarios WHERE nick = :user');
        $query->execute(['user' => $user]);

        foreach ($query as $currentUser) {
            $this->nombre = $currentUser['nombre'];
            $this->nick = $currentUser['nick'];
        }
    }
    public function getNombre()
    {

        return $this->nombre;
    }

}
