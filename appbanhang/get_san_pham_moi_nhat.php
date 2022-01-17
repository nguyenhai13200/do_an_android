<?php
include "connect_db.php";
$mangspmoinhat = array();
$query = "SELECT * FROM iphone ORDER BY id DESC LIMIT 4";
$query2 = "SELECT * FROM mac ORDER BY id DESC LIMIT 3";
$query3 = "SELECT * FROM ipad ORDER BY id DESC LIMIT 3";
$data = mysqli_query($conn,$query);
$data2 = mysqli_query($conn,$query2);
$data3 = mysqli_query($conn,$query3);
while($row = mysqli_fetch_assoc($data)){
    array_push($mangspmoinhat, new Sanphammoinhat(
        $row['id'],
        $row['ten'],
        $row['gia'],
        $row['hinhanh'],
        $row['mota']
    ));
}
while($row2 = mysqli_fetch_assoc($data2)){
    array_push($mangspmoinhat, new Sanphammoinhat(
        $row2['id'],
        $row2['ten'],
        $row2['gia'],
        $row2['hinhanh'],
        $row2['mota']
    ));
}
while($row3 = mysqli_fetch_assoc($data3)){
    array_push($mangspmoinhat, new Sanphammoinhat(
        $row3['id'],
        $row3['ten'],
        $row3['gia'],
        $row3['hinhanh'],
        $row3['mota']
    ));
}
echo json_encode($mangspmoinhat);
class Sanphammoinhat{
    function Sanphammoinhat($id, $tenspn, $giaspn, $hinhanhspn, $motaspn){
        $this->id = $id;
        $this->tenspn = $tenspn;
        $this->giaspn = $giaspn;
        $this->hinhanhspn = $hinhanhspn;
        $this->motaspn = $motaspn;
    }
}
?>