<?php
include_once 'connect_db.php';

$iduser = $_POST["iduser"];
$tongtien = $_POST["tongtien"];
$hinhthuc = $_POST["hinhthuc"];
$chitiet = $_POST["chitiet"];
$iddonhang = array();
if(empty($_POST["iduser"]) or empty($_POST["tongtien"]) or empty($_POST["hinhthuc"])){
    echo "Null";
}else{
    $query = "INSERT INTO `donhang`(`iduser`, `tongtien`, `hinhthuc`) VALUES ('$iduser','$tongtien','$hinhthuc')";
    $data = mysqli_query($conn,$query);
    if($data == true){
        $query1 = "SELECT id AS iddonhang FROM `donhang`  WHERE iduser = '$iduser' ORDER BY id DESC LIMIT 1";
        $data1 = mysqli_query($conn,$query1);
        while($row = mysqli_fetch_assoc($data1)){
            $iddonhang = $row;
        }
        if(!empty($iddonhang)){
            $chitiet = json_decode($chitiet,true);
            foreach($chitiet as $key => $value){
                $query2 = "INSERT INTO `chitiet_donhang`(`iddonhang`, `tensanpham`, `soluong`,`gia`) VALUES ('".$iddonhang['iddonhang']."','".$value["tensanpham"]."','".$value["soluong"]."','".$value["giasanpham"]."')";
                $data2 = mysqli_query($conn,$query2); 
            }
            if($data2 == true){
                echo "Success";
            }else{
                echo "Faill";
            }
        }
    }else{
        echo "Fail";
    }    
}
?>