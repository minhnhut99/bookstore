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
        include './connect_db.php';
        include './function.php';
        $error = false;
        if (isset($_GET['action']) && $_GET['action'] == 'reg') {
            if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
                $fullname = $_POST['fullname'];
                $birthday = $_POST['birthday'];
                $check = validateDateTime($birthday);
                if ($check) {
                    $birthday = strtotime($birthday);
                    $result = mysqli_query($con, "INSERT INTO `user` (`username`,`fullname`, `password`, `birthday`,`created_time`, `last_updated`) VALUES ('" . $_POST['username'] . "','" . $_POST['fullname'] . "',MD5('" . $_POST['password'] . "'), '" . $birthday . "', " . time() . ", '" . time() . "');");
                    if (!$result) {
                        if (strpos(mysqli_error($con), "Duplicate entry") !== FALSE) {
                            $error = "Tài khoản đã tồn tại. Bạn vui lòng chọn tài khoản khác.";
                        }
                    }
                    mysqli_close($con);
                } else {
                    $error = "Ngày tháng nhập chưa chính xác";
                }
                if ($error !== false) {
                    ?>
                    <div id="error-notify" class="box-content">
                        <h1>Thông báo</h1>
                        <h4><?= $error ?></h4>
                        <a href="./register.php">Quay lại</a>
                    </div>
                <?php } else { ?>
                    <div id="edit-notify" class="box-content">
                        <h1><?= ($error !== false) ? $error : "Đăng ký tài khoản thành công" ?></h1>
                    </div>
                <?php }header('location: ./index.php');?>
                
            <?php } else { ?>
                <div id="edit-notify" class="box-content">
                    <h1>Vui lòng nhập đủ thông tin để đăng ký tài khoản</h1>
                    <a href="./register.php">Quay lại đăng ký</a>
                </div>
                <?php
            }
        } else {
            ?>
            <div id="user_register" class="box-content">
                <div class="header">
                    <h2>Đăng ký</h2>
                </div>
                <form action="./register.php?action=reg" method="Post" autocomplete="off">
                    <div class="input-group">
                        <label class="label-brand">Tên đăng nhập</label>
                        <input type="text" name="username" value="">
                    </div>
                    <div class="input-group">
                        <label class="label-brand">Password</label>
                        <input type="password" name="password" value="" />
                    </div>
                    <div class="input-group">
                        <label class="label-brand">Họ tên</label>
                        <input type="text" name="fullname" value="" />
                    </div>
                    <div class="input-group">
                        <label class="label-brand">Ngày sinh (DD-MM-YYYY)</label>
                        <input type="text" name="birthday" value="" />
                    </div>
                    <input type="submit" value="Đăng ký"  name="register" class="btn"/>
                    <div class="switch-users">
                        <span>Bạn đã có tài khoản? <a href="login.php">Đăng nhập</a></span>
                    </div>
                </form>
            </div>
            <?php
        }
        ?>
    </body>
</html>
