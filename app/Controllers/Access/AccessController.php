<?php

require '../vendor/autoload.php';

use Models\Access\AccessModel;
use Models\User\UserModel;


use function Helpers\dd;
use function Helpers\generateUrl;
use function Helpers\redirect;

class AccessController
{


    public function UserAccess(){
        $obj = new AccessModel();
        $u_email = $_POST['u_email'];
        $u_pass = $_POST['u_pass'];
        $execute = $obj->ValidationUser($u_email, $u_pass);  
        if (!$execute) {
            echo "<script>alert('contraseña, correo electronico y/o codigo de verificación erroneo');</script>";
            redirect('login.php');
        } else {
                $_SESSION['nameUser'] = $execute['nameUser'];      
                $_SESSION['LastNameUser'] = $execute['LastNameUser'];
                $_SESSION['UserNumDocument'] = $execute['UserNumDocument'];
                $_SESSION['EmailUser'] = $execute['EmailUser'];
                $_SESSION['PhoneUser'] = $execute['PhoneUser'];
                $_SESSION['CountryUser'] = $execute['CountryUser'];
                $_SESSION['CityUser'] = $execute['CityUser'];
                $_SESSION['RolUser'] = $execute['RolUser'];
                $_SESSION['RolName'] = $execute['RolName'];
                $_SESSION['idUser'] = $execute['idUser'];
                $_SESSION['auth'] = true;
                $_SESSION['welcome'] = false;
            redirect('index.php');
        }
    }
    

   
    //views

    public function RegisterView(){
        include_once '../app/Views/Register/Register.php';
    }

    public function HomeView(){
        include_once '../app/Views/partials/home.php';
    }
    
    public function UserDestroy()
    {
        session_unset();
        session_destroy();
        redirect('login.php');
    }
    
    public function error404(){
        include_once '../app/Views/partials/page404.php';

    }
}






?>