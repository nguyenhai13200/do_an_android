<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "app_android";

$conn = mysqli_connect($host, $username, $password, $database);
mysqli_query($conn,"SET NAMES 'utf8'");
// mysqli_set_charset($conn, 'UTF8');
?>