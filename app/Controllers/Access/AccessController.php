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
        $u_code = $_POST['u_code'];
        $execute = $obj->ValidationUser($u_email, $u_pass, $u_code);  
        if (!$execute) {
            echo "<script>alert('contraseña, correo electronico y/o codigo de verificación erroneo');</script>";
            redirect('login.php');
        } else {
            $_SESSION['StatusUser'] = $execute['StatusUser'];
            $_SESSION['StatusCompany'] = $execute['StatusCompany'];
            if ($_SESSION['StatusUser'] == 1 || $_SESSION['StatusCompany'] == 1) {
                $_SESSION['nameUser'] = $execute['nameUser'];      
                $_SESSION['LastNameUser'] = $execute['LastNameUser'];
                $_SESSION['CompanyName'] = $execute['CompanyName'];
                $_SESSION['UserNumDocument'] = $execute['UserNumDocument'];
                $_SESSION['IdCompany'] = $execute['IdCompany'];
                $_SESSION['EmailUser'] = $execute['EmailUser'];
                $_SESSION['PhoneUser'] = $execute['PhoneUser'];
                $_SESSION['CountryUser'] = $execute['CountryUser'];
                $_SESSION['CityUser'] = $execute['CityUser'];
                $_SESSION['RolUser'] = $execute['RolUser'];
                $_SESSION['RolName'] = $execute['RolName'];
                $_SESSION['idUser'] = $execute['idUser'];
                $_SESSION['auth'] = true;
                $_SESSION['welcome'] = false;
        
                $folderPath = "uploads/UserImg/".$_SESSION['idUser']."/";
                $defaultImage = "img/default.png";
                $destination = $folderPath . "default.png";
        
                if (!file_exists($folderPath)) {
                    mkdir($folderPath, 0755, true);
                    copy($defaultImage, $destination);
                    // Establecer permisos de lectura y escritura para la imagen
                    chmod($destination, 0644);
                }
            }else {
                echo "<script>alert('No tienes acceso a la aplicación.');</script>";
                session_destroy();
            }
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