<?php
include "connect_db.php";

$search = $_POST['search'];
// if(empty($search)){
//     echo "fail";
// }else{
    $query = "SELECT * FROM iphone WHERE ten LIKE '%$search%'";
    $query2 = "SELECT * FROM mac WHERE ten LIKE '%$search%'";
    $query3 = "SELECT * FROM ipad WHERE ten LIKE '%$search%'";
    $data = mysqli_query($conn,$query);
    $data2 = mysqli_query($conn,$query2);
    $data3 = mysqli_query($conn,$query3);
    $result = array();
    while($row = mysqli_fetch_assoc($data)){
        $result[] = $row;
    }
    while($row2 = mysqli_fetch_assoc($data2)){
        $result[] = $row2;
    }
    while($row3 = mysqli_fetch_assoc($data3)){
        $result[] = $row3;
    }
    echo json_encode($result);
// }

?>  