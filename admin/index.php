<!DOCTYPE html>
<html>
    <head>
        <title>Admin bookstore</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .box-content{
                margin: 0 auto;
                width: 800px;
                border: 1px solid #ccc;
                text-align: center;
                padding: 20px;
                font-size: 1.2rem;
            }
            .box-content a {
                text-decoration: none;
                color: #189eff;
            }
            #user_login form{
                width: 200px;
                margin: 40px auto;
                color: #189eff;
            }
            #user_login form input{
                margin: 5px 0;
                width: 200px;
                height: 30px;
            }
            h1 {
                color: #189eff;
            }
            .info-login {
                position: absolute;
                top: 30%;
                left: 60%;
            }
        </style>
    </head>
    <body>
        <?php
        session_start();
        include '../connect_db.php';
        $error = false;
        if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
            $result = mysqli_query($con, "Select `id`,`username`,`fullname`,`birthday` from `user` WHERE (`username` ='" . $_POST['username'] . "' AND `password` = md5('" . $_POST['password'] . "'))");
            if (!$result) {
                $error = mysqli_error($con);
            } else {
                $user = mysqli_fetch_assoc($result);
                $_SESSION['current_user'] = $user;
            }
            mysqli_close($con);
            if ($error !== false || $result->num_rows == 0) {
                ?>
                <div id="login-notify" class="box-content">
                    <h1>Thông báo</h1>
                    <h4><?= !empty($error) ? $error : "Thông tin đăng nhập không chính xác" ?></h4>
                    <a href="./index.php">Quay lại</a>
                </div>
                <?php
                exit;
            }
            ?>
        <?php } ?>
        <?php if (empty($_SESSION['current_user'])) { ?>
            <div id="user_login" class="box-content">
                <h1>Đăng nhập tài khoản</h1>
                <div class="info-login">
                        <p>Username: admin</p>
                        <p>Password: admin</p>
                </div>
                <form action="./index.php" method="Post" autocomplete="off">
                    <label>Username</label></br>
                    <input type="text" name="username" value="" /><br/>
                    <label>Password</label></br>
                    <input type="password" name="password" value="" /></br>
                    <br>
                    <input type="submit" value="Đăng nhập" />
                </form>
            </div>
            <?php
        } else {
            $currentUser = $_SESSION['current_user'];
            ?>
            <div id="login-notify" class="box-content">
                Xin chào <?= $currentUser['fullname'] ?><br/>
                <a href="./product_listing.php">Quản lý sản phẩm</a><br>
                <a href="../admin_user.php">Quản lý tài khoản</a><br>
                <a href="./edit.php">Đổi mật khẩu</a><br/>
                <a href="./logout.php">Đăng xuất</a>
            </div>
        <?php } ?>
    </body>
</html>