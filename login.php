<!DOCTYPE html>
<html>
    <head>
        <title>Bài 4: Tạo form đăng ký, đăng nhập hệ thống</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/css/styleform.css" />
    </head>
    <body>

        <?php
        session_start();
        include './connect_db.php';
        $error = false;
        if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
            $result = mysqli_query($con, "Select `id`,`username`,`fullname`,`birthday` from `user` WHERE (`username` ='" . $_POST['username'] . "' AND `password` = md5('" . $_POST['password'] . "'))");
            if (!$result) {
                $error = mysqli_error($con);
            } else {
                $user = mysqli_fetch_assoc($result);
                $_SESSION['current_user'] = $user;
                header('location: ./index.php'); // tro ve trang chu 
            }
            mysqli_close($con);
            if ($error !== false || $result->num_rows == 0) {
                ?>
                <div id="login-notify" class="box-content">
                    <h1>Thông báo</h1>
                    <h4><?= !empty($error) ? $error : "Thông tin đăng nhập không chính xác" ?></h4>
                    <a href="./login.php">Quay lại</a>
                </div>
                <?php
                exit;
            }
            ?>
        <?php } ?>
        <?php if (empty($_SESSION['current_user'])) { ?>
            <div id="user_login" class="box-content">
                <div class="header">
                    <h2>Đăng nhập</h2>
                </div>
                <form action="./login.php" method="Post" autocomplete="off">
                    <div class="input-group">
                        <label class="label-brand">Username</label></br>
                        <input type="text" name="username" value="" />
                    </div>
                    <div class="input-group">
                        <label class="label-brand">Password</label></br>
                        <input type="password" name="password" value=""/>
                    </div>
                    <div class=""></div>
                    <input type="submit" value="Đăng nhập" name="login"  class="btn"/>
                </form>
            </div>
            <?php
        } else {
            $currentUser = $_SESSION['current_user'];
            ?>
            <div id="login-notify" class="box-content">
                Xin chào <?= $currentUser['fullname'] ?><br/>
                <a href="./edit.php">Đổi mật khẩu</a><br/>
                <a href="./logout.php">Đăng xuất</a>
            </div>
        <?php } ?>
    </body>
</html>
