<?php
include "connect_db.php";

$tenspn = $_GET['tenspn'];
$query1 = "SELECT * FROM image_ipad_library WHERE tensanpham = '$tenspn'";
$query2 = "SELECT * FROM image_iphone_library WHERE tensanpham = '$tenspn'";
$query3 = "SELECT * FROM image_mac_library WHERE tensanpham = '$tenspn'";
$data1 = mysqli_query($conn,$query1);
$data2 = mysqli_query($conn,$query2);
$data3 = mysqli_query($conn,$query3);
$manghinhanh = array();
while($row1 = mysqli_fetch_array($data1)){
    array_push($manghinhanh, new HinhAnh(
        $row1['khohinhanh']
    ));
}
while($row2 = mysqli_fetch_array($data2)){
    array_push($manghinhanh, new HinhAnh(
        $row2['khohinhanh']
    ));
}
while($row3 = mysqli_fetch_array($data3)){
    array_push($manghinhanh, new HinhAnh(
        $row3['khohinhanh']
    ));
}
echo json_encode($manghinhanh);
class HinhAnh{
    function HinhAnh( $khohinhanh){
        $this->khohinhanh = $khohinhanh;
    }
}
?>