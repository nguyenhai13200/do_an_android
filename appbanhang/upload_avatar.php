<?php
    $file_path = "avatar/"; 
    $file_path = $file_path.basename($_FILES['uploaded_avatar']['name']);

    if(move_uploaded_file($_FILES['uploaded_avatar']['tmp_name'],$file_path)){
        echo $_FILES['uploaded_avatar']['name'];
    }else{
        echo "Failed";
    }
?>