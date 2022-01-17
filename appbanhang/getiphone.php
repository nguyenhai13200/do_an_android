<?php
include "connect_db.php";
$page = $_GET['page'];
$space = 5;
$limit = ($page -1) * $space;
$mangiphone = array();
$query = "SELECT * FROM iphone LIMIT $limit,$space";
$data = mysqli_query($conn,$query);
while($row = mysqli_fetch_array($data)){
    array_push($mangiphone, new Iphone(
        $row['id'],
        $row['ten'],
        $row['gia'],
        $row['hinhanh'],
        $row['mota']
    ));
}
echo json_encode($mangiphone);
class Iphone{
    function Iphone($id, $teniphone, $giaiphone, $hinhanhiphone, $motaiphone){
        $this->id = $id;
        $this->ten = $teniphone;
        $this->gia = $giaiphone;
        $this->hinhanh = $hinhanhiphone;
        $this->mota = $motaiphone;
    }
}
?>