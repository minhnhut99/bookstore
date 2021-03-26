<?php include "./connect_db.php"; ?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sach san pham</title>
    <link rel="stylesheet" href="./assets/css/base.css" />
    <link rel="stylesheet" href="./assets/css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap&subset=vietnamese" rel="stylesheet" />
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.12.1-web/css/all.min.css" />
    <style>
        .container {
            width: 83%;
            position: relative;
            top: -10px;
            left: 10px;
        }
        .product-items {
            display: flex;
            flex-wrap: wrap;
            margin-left: -5px;
            margin-right: -5px;
        }

        .product-item {
            width: 18%;
            margin: 1%;
            padding: 10px;
            border-radius: 3px;
            box-sizing: border-box;
            height: 260px;
            display: block;
            background-color: var(--white-color);
            transition: transform ease-in 0.05s;
            cursor: pointer;
        }

        .product-item:hover {
            box-shadow: 0 1px 20px 0 rgba(0, 0, 0, 0.05);
            transform: translateY(-2.5px);
        }


        .product-price {
            color: var(--black-color);
            font-size: 1.7rem;
            margin-left: 21px;
            font-weight: 500;
            line-height: 30px;
        }

        .product-img {
            height: 270px;
            border-top-left-radius: 2px;
            border-top-right-radius: 2px;
        }

        .product-item img {
            max-width: 100%;
        }

        .product-item ul {
            margin: 0;
            padding: 0;
            border-right: 1px solid #ccc;
        }

        .product-item ul li {
            width: 33.3333%;
            list-style: none;
            text-align: center;
            border-right: 0;
            box-sizing: border-box;
        }

        .buy-button {
            width: 55px;
            height: 30px;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            font-size: 1.5rem;
            outline: none;
            cursor: pointer;
            background-color: var(--primary-color);
            line-height: 30px;
            text-align: center;   
            font-weight: 700; 
        }
        .buy-button a {
            text-decoration: none;
            color: var(--text-color);
        }   
        
        #pagination {
            margin: 20px auto;
            font-size: 2rem;
            display: block;
        }
        #pagination a {
            text-decoration: none;
        }
        .page-item {
            padding: 5px 9px;
            color: var(--text-color);
            border-radius: 4px;
        }

        .current-page {
            background-color:var(--primary-color);
            color: var(--text-color);
        }

        .wrap_price-buy {
            display: flex;
            justify-content: space-between;
        }

        .product-name {
            text-align: center;
            font-size: 1.4rem;
            font-weight: 500;
            color: var(--text-color);
            line-height: 1.8rem;
            height: 3.6rem;
            margin: 10px 10px 6px;
            overflow: hidden;
            display: block;
            text-align: center;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 2;
        }
    </style>
</head>

<body>

    <?php
        include './connect_db.php';
        $item_per_page = !empty($_GET['per_page']) ? $_GET['per_page'] : 10;
        $current_page = !empty($_GET['page']) ? $_GET['page'] : 1;
        $offset = ($current_page - 1) * $item_per_page;
        $products = mysqli_query($con, "SELECT * FROM `hanghoa` ORDER BY `id` ASC  LIMIT " . $item_per_page . " OFFSET " . $offset);
        $totalRecords = mysqli_query($con, "SELECT * FROM `hanghoa`");
        $totalRecords = $totalRecords->num_rows;
        $totalPages = ceil($totalRecords / $item_per_page);
    ?>
    <div class="container">
        <div class="product-items">
            <?php
            while ($row = mysqli_fetch_array($products)) {
            ?>
                <div class="product-item">
                    <div class="product-img">
                        <a href="detail.php?id=<?= $row['id'] ?>"><img src="<?= $row['image'] ?>" title="<?= $row['name'] ?>"/></a>
                        <span class="product-name"><?= $row['name'] ?></span>
                    <div class="wrap_price-buy">
                        <span class="product-price"><?= number_format($row['price'], 0, ",", ".") ?>đ</span>
                        <div class="buy-button">
                            <a href="./detail.php?id=<?=$row['id']?>">Mua</a>
                        </div>  
                    </div>
                    </div>
                </div>
            <?php } ?>
            
            <?php include './pagination.php'; ?>
        </div>
    </div>

</body>

</html>