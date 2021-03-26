<!-- xu ly php --> 
<!-- tim tong so records 
 -->
<?php 
include "./connect_db.php";
$result = mysqli_query($con, 'select count(id) as total from news');
$row = mysqli_fetch_assoc($result);
$total_records = $row['total'];

$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 10;
$total_page = ceil($total_records / $limit);

if ($current_page > $total_page) {
    $current_page = $total_page;
}
else if ($current_page < 1) {
    $current_page = 1;
}

$start = ($current_page - 1 ) * $limit;

// lay danh sach san pham 
$result = mysqli_query($con, "SELECT * FROM news LIMIT $start, $limit");
?>



<!-- hien thi tin tuc  -->
<?php 
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<li>' .$row['title'].'</li>';
    }


?>

<!-- hien thi cac nut phan trang  -->
<?php
      // hien thi nut tro ve
    if ($current_page > 1 && $total_page > 1) {
        echo '<a href="index.php?page='.($current_page - 1).'">Prev</a> |';
    }
      // hien thi nut next
    if ($current_page > 1 && $total_page > 1) {
        echo '<a href="index.php?page='.($current_page + 1).'">Next</a> |';
    }
?>