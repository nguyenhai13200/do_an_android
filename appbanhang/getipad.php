<?php
include "connect_db.php";
$page = $_GET['page'];
$space = 5;
$limit = ($page -1) * $space;
$mangipad = array();
$query = "SELECT * FROM ipad LIMIT $limit,$space";
$data = mysqli_query($conn,$query);
while($row = mysqli_fetch_array($data)){
    array_push($mangipad, new Ipad(
        $row['id'],
        $row['ten'],
        $row['gia'],
        $row['hinhanh'],
        $row['mota']
    ));
}
echo json_encode($mangipad);
class Ipad{
    function Ipad($id, $tenipad, $giaipad, $hinhanhipad, $motaipad){
        $this->id = $id;
        $this->ten = $tenipad;
        $this->gia = $giaipad;
        $this->hinhanh = $hinhanhipad;
        $this->mota = $motaipad;
    }
}
?>