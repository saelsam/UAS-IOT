<?php
$conn = mysqli_connect("localhost", "id20835178_mrnyahya", "Yaya12345*", "id20835178_datalogging");
if(isset($_GET['id'])){
    $id = $_GET['id'];

    $result = mysqli_query($conn,
    "DELETE FROM datasensorbathroom WHERE id = '$id'");
    if($result){
        echo" 
        <script> 
        alert('Data Berhasil dihapus !!!');
        document.location.href = 'bathroom.php';
        </script>
    ";
    }
    else {
        echo" 
            <script> 
            alert('Gagal Menghapus Data !!!');
            </script>
        ";
    }
}
?>

