<?php
    include "connect_db.php";

    $username = $_POST["username"];
    $password = md5($_POST["password"]);
    // $username = "abong";
    // $password = md5("132132");

    if(empty($_POST["username"]) or empty($_POST["password"])){
        echo "Null";
    }else{
        $user = array();
        $check = "SELECT * FROM user WHERE FIND_IN_SET('$username',username) AND FIND_IN_SET('$password',password)";
        $query = mysqli_query($conn,$check);
        if($query){
            while($row = mysqli_fetch_assoc($query)){
                array_push($user, new User($row['id'],
                                            $row['username'],
                                            $row['fullname'],
                                            $row['password'],
                                            $row['avatar'],
                                            $row['address'],
                                            $row['phone']));
            }
            if($user > 0){
                echo json_encode($user);
            }else{
                echo "Failed";
            }
        }
    }

    class User{
        function User($id,$taikhoan,$hovaten,$matkhau,$avatar,$diachi,$sodienthoai){
            $this->id = $id;
            $this->username = $taikhoan;
            $this->fullname = $hovaten;
            $this->password = $matkhau;
            $this->avatar = $avatar;
            $this->address = $diachi;
            $this->phone = $sodienthoai;
        }
    }
?>