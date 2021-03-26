<?php
include('connect_db.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE</title>
    <link rel="stylesheet" href="./assets/css/base.css" />
    <link rel="stylesheet" href="./assets/css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap&subset=vietnamese" rel="stylesheet" />
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.12.1-web/css/all.min.css" />
    <script src="//code.jquery.com/jquery.js"></script>    
</head>

<body>
    <div class="main">
        <!-- header -->
        <?php include('header.php') ?>
        <div class="app__container">
            <div class="grid">
                <div class="grid__row app__content">
                    <!-- danh muc san pham -->
                    <?php include('category.php'); ?>
                    <!-- danh sach san pham -->
                    <?php include('list_product.php'); ?>
                </div>
            </div>
        </div>
        <!-- footer -->
        <?php include('footer.php'); ?>
    </div>
</body>

</html>