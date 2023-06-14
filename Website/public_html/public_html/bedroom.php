<?php
$koneksi = mysqli_connect("localhost", "id20835178_mrnyahya", "Yaya12345*", "id20835178_datalogging");
// SEARCH NAMA AKUN

if (isset($_GET['search'])) {
   $keyword = $_GET['keyword'];
   $query = mysqli_query($koneksi, "SELECT * FROM datasensorbedroom where
   id        LIKE '%$keyword%' OR
   topic     LIKE '%$keyword%' OR
   payload   LIKE '%$keyword%' OR
   time      LIKE '%$keyword%'
   ");
} else {
   $query = mysqli_query($koneksi, "SELECT * FROM datasensorbedroom");
}

$bedroom = [];
while ($row = mysqli_fetch_assoc($query)) {
   $bedroom[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Bedroom</title>

   <!-- CONNECT -->
   <link rel="stylesheet" href="table.css">
   <link rel="stylesheet" href="tampilan.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body>
   <div class="grid-container">
      <!-- Header -->
      <header class="header">
         <div class="menu-icon" onclick="openSidebar()">
            <span><i class="bi bi-list" style="font-size: 22px; color: #6a9792"></i></span>
         </div>
         <div class="header-left">
            <!-- <span><i class="bi bi-search" style="font-size: 22px; color: #6a9792"></i></span> -->
         </div>
      </header>


      <!-- Sidebar-->
      <aside id="sidebar">
         <div class="sidebar-title">
            <span onclick="closeSidebar()"><i class="bi bi-x-lg" style="font-size: 22px; color: white; padding-right:35px"></i></span>
         </div>

         <ul class="sidebar-list">
            <li class="sidebar-list-item">
               <a href="./bedroom.php"><span><i class="bi bi-clipboard-data" style="font-size: 22px; padding-right: 17px; color:white"></i></span> Bedroom</a>
            </li>
            <li class="sidebar-list-item">
               <a href="./bathroom.php"><span><i class="bi bi-clipboard-data" style="font-size: 22px; padding-right: 17px; color:white"></i></span> Bathroom</a>
            </li>
            <li class="sidebar-list-item">
               <a href="./livingroom.php"><span><i class="bi bi-person-lines-fill" style="font-size: 22px; padding-right: 17px; color:white"></i></span> Livingroom</a>
            </li>
            <li class="sidebar-list-item">
               <a href="./kitchen.php"><span><i class="bi bi-person-lines-fill" style="font-size: 22px; padding-right: 17px; color:white"></i></span> Kitchen</a>
            </li>
         </ul>
      </aside>



      <!-- CAFE 1 | SATU KATA -->
      <main class="main-container">
         <div class="main-title">
            <p class="font-weight-bold" style="text-align: center;">DATABASE BEDROOM</p>
            <div class="table-header">
               <form action="" method="get"><input type="text" name="keyword" id="keyword" placeholder="Cari.." autocomplete="off">
               <button type="submit" name="search" class="cari"> <i class="bi bi-search" style="font-size: 15px; color: white"></i></button>
               </form>
            </div>
         </div>

         <?php
         $koneksi = mysqli_connect("localhost", "id20835178_mrnyahya", "Yaya12345*", "id20835178_datalogging");
         $result = $koneksi->query("SELECT * FROM datasensorbedroom");
         ?>
         <!-- Isi -->
         <div class="charts" style="overflow-x: auto;">
            <div class="charts-card">
               <table>
                  <thead>
                     <tr>
                        <th width=5%>NO.</th>
                        <th width=40%>TOPIC</th>
                        <th width=10%>PAYLOAD</th>
                        <th width=35%>TIME</th>
                        <th width=10%>ACTION</th>
                     </tr>
                  </thead>

                  <tbody>
                     <?php $y = 1 ?>
                     <?php foreach ($query as $data) : ?>
                        <tr>
                           <td><?php echo $y; ?>.</td>
                           <td><?php echo $data['topic']; ?></td>
                           <td><?php echo $data["payload"]; ?></td>
                           <td><?php echo $data["time"]; ?></td>
                           <td><a class="bi bi-trash" style="text-align: center; color: #6a9792; font-size: 25px" href="hapus_bedroom.php?id=<?php echo $data["id"]; ?> "></a></td>
                        </tr>
                        <?php $y++; ?>
                     <?php endforeach; ?>
                  </tbody>
               </table>
            </div>
         </div>
      </main>
   </div>





   <!-- Scripts -->
   <script>
      // SIDEBAR TOGGLE

      var sidebarOpen = false;
      var sidebar = document.getElementById("sidebar");

      function openSidebar() {
         if (!sidebarOpen) {
            sidebar.classList.add("sidebar-responsive");
            sidebarOpen = true;
         }
      }

      function closeSidebar() {
         if (sidebarOpen) {
            sidebar.classList.remove("sidebar-responsive");
            sidebarOpen = false;
         }
      }
   </script>
</body>

</html>