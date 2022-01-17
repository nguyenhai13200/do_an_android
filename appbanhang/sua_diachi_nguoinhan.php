<?php
include_once 'connect_db.php';

$username = $_POST["username"];
$fullname = $_POST["fullname"];
$phone = $_POST["phone"];
$address = $_POST["address"];
if(empty($_POST["username"]) or empty($_POST["fullname"]) or empty($_POST["phone"]) or empty($_POST["address"])){
    echo "Null";
}else{
    $checkname = "SELECT * FROM `user` WHERE username = '$username'";
    $query = mysqli_query($conn,$checkname);
    $row = mysqli_num_rows($query);
    if($row >0){
        $update = "UPDATE `user` SET fullname = '$fullname', phone ='$phone', address = '$address' WHERE username = '$username'";
        $query = mysqli_query($conn,$update);
        echo "Success";
    }else{
        echo "Fail";
    }    
}
?>