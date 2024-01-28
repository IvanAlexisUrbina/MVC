<?php
namespace Models\User;

use Models\MasterModel;
use PDO;
use PDOException;
use function Helpers\dd;

Class UserModel extends MasterModel
{


    public function insertUser($email, $password, $code,$c_id,$rol_id=3,$status_id=2,$name=null, $lastname=null, $phone=null,  $document=null, $type_document=null, $country=null, $city=null,$u_codeSeller=null) {
        $sql = "INSERT INTO users (u_id, u_name, u_lastname, u_phone, u_email, u_document, u_type_document, u_country, u_city, u_pass, u_code, rol_id, c_id, status_id,u_codeSeller)
                VALUES (:u_id, :u_name, :u_lastname, :u_phone, :u_email, :u_document, :u_type_document, :u_country, :u_city, :u_pass, :u_code, :rol_id, :c_id, :status_id,:u_codeSeller)";
        $params = [
            'u_id' => null,
            'u_name' => $name,
            'u_lastname' => $lastname,
            'u_phone' => $phone,
            'u_email' => $email,
            'u_document' => $document,
            'u_type_document' => $type_document,
            'u_country' => $country,
            'u_city' => $city,
            'u_pass' => $password,
            'u_code' => $code,
            'rol_id' => $rol_id,
            'c_id' => $c_id,
            'status_id' => $status_id,
            'u_codeSeller' => $u_codeSeller
        ];
    
        $this->insert($sql, $params);
    }

    public function getUserWithRol(int $c_id,int $rol_id){
        $sql = "SELECT u_name,u_lastname,u_email FROM users
        WHERE rol_id = :rol_id 
        AND c_id = :c_id";
        $params = [
            'c_id' => $c_id,
            'rol_id'=>$rol_id
        ];
        $user=$this->select($sql, $params);
        return $user;
    }
        

    public function checkEmailExists($email)
    {
        $sql = "SELECT COUNT(*) as total FROM users WHERE u_email = :email";
        $params = [
            ':email' => $email
        ];
    
        $result = $this->select($sql, $params);
    
        // El correo existe si el valor de "total" es mayor a 0
        return $result && isset($result[0]['total']) && $result[0]['total'] > 0;
    }
    
    public function updateUserPassword($userId, $newPassword)
    {
        $hashedPassword = password_hash($newPassword, PASSWORD_DEFAULT);
    
        $sql = "UPDATE users SET u_pass = :newPassword WHERE u_id = :userId";
        $params = [
            'newPassword' => $hashedPassword,
            'userId' => $userId
        ];
    
        $this->update($sql, $params);
    }
    
    public function verifyUserPassword($userId, $password)
{
    $sql = "SELECT u_pass FROM users WHERE u_id = :userId";
    $params = [
        'userId' => $userId
    ];

    $result = $this->select($sql, $params);

    if ($result && count($result) > 0) {
       
        $hashedPassword = $result[0]['u_pass'];

        return password_verify($password, $hashedPassword);
    }

    return false;
}

    
}





?>