<?php

$servername = "localhost";
$username = "id20835178_mrnyahya";
$password = "Yaya12345*";
$dbname = "id20835178_datalogging";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if(!$conn){
    die("Koneksi ke database gagal: ".mysqli_connect_error());
}else{
    echo "Selamat koneksi berhasil";
}

$webhook = json_decode(file_get_contents('php://input'),true);
$topic = $webhook['topic'];
$payload = $webhook['payload'];

$sql = "INSERT INTO datasensorLR (topic, payload) VALUES ('$topic', '$payload')";

mysqli_query($conn, $sql);


?>