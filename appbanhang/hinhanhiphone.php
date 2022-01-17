<?php
include "connect_db.php";

$id = $_GET['idIP'];
// $id = 1;
$query = "SELECT * FROM image_iphone_library WHERE idsanpham = '$id'";
$data = mysqli_query($conn,$query);
$manghinhanh = array();
while($row = mysqli_fetch_array($data)){
    array_push($manghinhanh, new HinhAnh(
        // $row['id'],
        // $row['idsanpham'],
        $row['khohinhanh']
    ));
}
echo json_encode($manghinhanh);
class HinhAnh{
    function HinhAnh( $khohinhanh){
        // $this->id = $id;
        // $this->idsp = $idsp;
        $this->khohinhanh = $khohinhanh;
    }
}
?>