
<?php include "./connect_db.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh muc</title>
    <link rel="stylesheet" href="./assets/css/base.css" />
    <link rel="stylesheet" href="./assets/css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap&subset=vietnamese" rel="stylesheet" />
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.12.1-web/css/all.min.css" />
</head>

<body>
    <div class="grid__column-2">
        <nav class="category">
            <h3 class="category__heading">Danh mục</h3> 
            <ul class="category-list">
                <li class="category-item">
                    <a href="?per_page=10&page=1" class="category-item__link">Tiểu thuyết</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=2" class="category-item__link">Tâm lý</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=3" class="category-item__link">Quản trị - Lãnh đạo</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=4" class="category-item__link">Marketing - Bán hàng</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=5" class="category-item__link">Rèn luyện nhân cách</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=6" class="category-item__link">Phân tích - Kinh tế</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=7" class="category-item__link">Nhân vật - Bài học kinh doanh</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=8" class="category-item__link">Chứng khoán - Bất động sản</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=9" class="category-item__link">Kỹ năng sống</a>
                </li>
                <li class="category-item">
                    <a href="?per_page=10&page=10" class="category-item__link">Lịch sử - Địa lý - Tôn giáo</a>
                </li>
            </ul>
        </nav>
    </div>
</body>

</html>