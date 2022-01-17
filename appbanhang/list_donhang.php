<?php
include_once 'connect_db.php';

$iduser = $_POST["iduser"];
$result = array();

$query = "SELECT * FROM `donhang` WHERE `iduser` = '$iduser'";
$data = mysqli_query($conn,$query);
while($row = mysqli_fetch_assoc($data)){
    $query1 = "SELECT * FROM `chitiet_donhang` INNER JOIN iphone ON chitiet_donhang.tensanpham = iphone.ten WHERE chitiet_donhang.iddonhang = ".$row['id']."";
    $query2 = "SELECT * FROM `chitiet_donhang` INNER JOIN ipad ON chitiet_donhang.tensanpham = ipad.ten WHERE chitiet_donhang.iddonhang = ".$row['id']."";
    $query3 = "SELECT * FROM `chitiet_donhang` INNER JOIN mac ON chitiet_donhang.tensanpham = mac.ten WHERE chitiet_donhang.iddonhang = ".$row['id']."";
    $data1 = mysqli_query($conn,$query1);
    $data2 = mysqli_query($conn,$query2);
    $data3 = mysqli_query($conn,$query3);
    $item = array();
    while($row1 = mysqli_fetch_assoc($data1)){
        $item[] = $row1;
    }
    while($row2 = mysqli_fetch_assoc($data2)){
        $item[] = $row2;
    }
    while($row3 = mysqli_fetch_assoc($data3)){
        $item[] = $row3;
    }
    $row['item'] = $item;
    $result[] = $row;
}

echo json_encode($result);
?>