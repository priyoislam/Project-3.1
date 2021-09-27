<?php
session_start();
include('dbcon.php');

if ($connect) {
    if (isset($_POST['login'])) {
        $U_name = $_POST['name'];
        $U_password = $_POST['password'];
        $sql = "SELECT * FROM signup where name='$U_name' AND password='$U_password'";
        $res = mysqli_query($connect, $sql);
        if (mysqli_num_rows($res) > 0) {
            // session_start();
            $row=mysqli_fetch_assoc($res);
            $_SESSION['is_login']=true;
            $_SESSION['name'] = $U_name;
            $_SESSION['email'] = $row['email'];
                header('location:user_profile.php');
        } else {
            echo "<SCRIPT> //not showing me this
            alert('Please create an account')
            window.location.replace('signup.php');
        </SCRIPT>";
           
        }
    }
} else {
    echo "not connected";
}



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user_log_in</title>
    <link rel="stylesheet" href="../css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    <link rel="stylesheet" href="../css/fontawesome.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/animate.min.css">
</head>

<body>
    <!---start of background image-->
    <?php require "navbar.php";?>
    <div class="bg">
        <div class="container login2">
            <div class="row ">
                <div class="col-sm-4 col-md-6 col-lg-6">
                    <div class="jumbotron login1">
                        <h1 class="sign text-center">Log In</h1>

                        <form method="POST" class="mt-5" action="login.php">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Username</label>
                                <input type="text" class="form-control ic" id="exampleInputEmail1" name="name" aria-describedby="nameHelp">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control ic" name="password" id="exampleInputPassword1">
                                <small id="emailHelp" class="form-text text-muted text">We'll never share your password with anyone else.</small>
                            </div>

                            <button type="submit" class="btn btn-primary btn-1 mb-3 mt-2" name="login">LOG IN</button><br>
                            <a class="account" href="signup.php">CREATE YOUR ACCOUNT<i class="fa fa-arrow-right"></i></a>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <?php include("footer.php");?>
    <!--end of a background image-->

    <script src="js/jquery-3.5.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/wow.js"></script>
    <script>
        new WOW().init();
    </script>
    <script>
        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function() {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>
</body>

</html>