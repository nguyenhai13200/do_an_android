<?php
include_once 'connect_db.php';

$username = $_POST["username"];
$password = md5($_POST["password"]);
$passwordnew = md5($_POST["passwordnew"]);
if(empty($_POST["username"]) or empty($_POST["password"]) or empty($_POST["passwordnew"])){
    echo "Null";
}else{
    $checkname = "SELECT * FROM `user` WHERE username = '$username' AND password = '$password'";
    $query = mysqli_query($conn,$checkname);
    $row = mysqli_num_rows($query);
    if($row > 0){
        $update = "UPDATE `user` SET password ='$passwordnew' WHERE username = '$username'";
        mysqli_query($conn,$update);
        echo "Success";
    }else{
        echo "Fail";
    }    
}
?>
