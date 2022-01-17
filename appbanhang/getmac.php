<?php
include "connect_db.php";
$page = $_GET['page'];
$space = 5;
$limit = ($page -1) * $space;
$mangmac = array();
$query = "SELECT * FROM mac LIMIT $limit,$space";
$data = mysqli_query($conn,$query);
while($row = mysqli_fetch_array($data)){
    array_push($mangmac, new Mac(
        $row['id'],
        $row['ten'],
        $row['gia'],
        $row['hinhanh'],
        $row['mota']
    ));
}
echo json_encode($mangmac);
class Mac{
    function Mac($id, $tenmac, $giamac, $hinhanhmac, $motamac){
        $this->id = $id;
        $this->ten = $tenmac;
        $this->gia = $giamac;
        $this->hinhanh = $hinhanhmac;
        $this->mota = $motamac;
    }
}
?>