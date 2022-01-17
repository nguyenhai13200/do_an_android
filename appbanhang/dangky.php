<?php
    include 'connect_db.php';
    $username = $_POST["username"];
    $fullname = $_POST["fullname"];
    $password = md5($_POST["password"]);
    $phonenumber= $_POST["phonenumber"];
    // $username = "abong";
    // $password = md5("123456");
    // $phonenumber= "0123456";

    if(empty($_POST["username"]) or empty($_POST["fullname"]) or empty($_POST["password"]) or empty($_POST["phonenumber"])){
        echo "Null";
    }
    else{
        $check = "select * from `user` where username = '$username'";
        $query = mysqli_query($conn,$check);
        $row = mysqli_num_rows($query);
        if($row == 0){
            $add = "insert into user(id, username, fullname, password, avatar, address, phone) values (null,'$username','$fullname','$password',null,null,'$phonenumber')";
            mysqli_set_charset($conn,'utf8');
            $query2 = mysqli_query($conn,$add);
            echo "Success";
        }
        else{
            echo "Failed";
        }    
    }
?>
