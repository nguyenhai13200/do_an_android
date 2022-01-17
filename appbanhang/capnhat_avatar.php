<?php
include_once 'connect_db.php';

$username = $_POST["username"];
$avatar = $_POST["avatar"];
if(empty($_POST["username"]) or empty($_POST["avatar"])){
    echo "Null";
}else{
    $checkname = "SELECT * FROM `user` WHERE username = '$username'";
    $query = mysqli_query($conn,$checkname);
    $row = mysqli_num_rows($query);
    if($row >0){
        $update = "UPDATE `user` SET avatar ='$avatar' WHERE username = '$username'";
        $query = mysqli_query($conn,$update);
        echo "'$avatar'";
    }else{
        echo "Fail";
    }    
}
?>