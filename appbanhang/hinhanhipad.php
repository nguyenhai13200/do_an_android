<?php
include "connect_db.php";

$id = $_GET['idIpad'];
$query = "SELECT * FROM image_ipad_library WHERE idsanpham = '$id'";
$data = mysqli_query($conn,$query);
$manghinhanh = array();
while($row = mysqli_fetch_array($data)){
    array_push($manghinhanh, new HinhAnh(
        $row['khohinhanh']
    ));
}
echo json_encode($manghinhanh);
class HinhAnh{
    function HinhAnh( $khohinhanh){
        $this->khohinhanh = $khohinhanh;
    }
}
?>