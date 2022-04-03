<?php
include('dbcon.php');
SESSION_start();
$msg = "";

if ($connect) {
    if (isset($_POST['submit'])) {
        $U_name = $_POST['name'];
        $U_mail = $_POST['email'];
        $U_address = $_POST['address'];
        $U_password = $_POST['password'];
        $U_phone = $_POST['phone'];
        $sqlfind = "SELECT * FROM signup where email='$U_mail'";
        $resfind = mysqli_query($connect, $sqlfind);
        if (mysqli_num_rows($resfind) > 0) {
            $msg = "This Email is already existed";
        } else {
            $sql = "INSERT INTO signup(id,name,email,address,password,phone)
   VALUES (NULL,'$U_name','$U_mail','$U_address','$U_password','$U_phone')";
            $res = mysqli_query($connect, $sql);
            if ($res) {
                $_SESSION['email'] = $U_mail;
                header('location:user_profile.php');
            } else {
                echo "not added";
            }
        }
    }
} else {
    // echo "not added";
}
if ($connect) {
    $sql2 = "SELECT * from research_area";
    $res2 = mysqli_query($connect, $sql2);
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/signup.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/all.min.css?v=<?php echo time(); ?>">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">
</head>

<body>


    <?php include("navbar.php");  ?>


    <div class="container wrap">
        <div class="row signuprow">
            <div class="col-md-6 leftbox  justify-content-center  ">

                <div class="row">
                    <div class="header-area">
                        <h2>Sign Up As User</h2>
                        <p>Or join with</p>
                    </div>

                </div>
                <div class="row">

                    <div class="social-area">
                        <i class="fa fa-facebook"></i>
                        <i class="fa fa-google"></i>
                        <i class="fa fa-linkedin"></i>
                    </div>

                </div>



            </div>
            <div class="col-md-6 d-flex justify-content-center flex-wrap p-4 ">
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-area">

                        <div class="d-flex">
                            <i class="fa fa-user"></i>
                            <input type="text" name="name" placeholder="Enter Username" required>

                        </div>
                        <div class="d-flex">

                        </div>
                        <div class="d-flex">
                            <i class="fa fa-envelope"></i>
                            <input type="email" name="email" placeholder="Enter Email Address" required>
                        </div>
                        <div class="d-flex">
                            <i class="fa fa-location-arrow"></i>
                            <input type="text" name="address" placeholder="Enter Address" required>

                        </div>
                        <div class="d-flex">
                            <i class="fa fa-key"></i>
                            <input type="password" name="password" placeholder="Enter Password" required>

                        </div>
                        <div class="d-flex">

                            <i class="fa fa-phone"></i>
                            <input type="text" name="phone" placeholder="Enter Phone Number" required>
                        </div>






                        <input type="checkbox" id="" name="terms" value="<">
                                <label for="terms"> I will accept terms and condition</label><br>

                        <button type="submit" name="submit" value="">Submit</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <?php include("footer.php");  ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="../js/wow.js"></script>
    <script>
        new WOW.init();
    </script>
    <script src="../js/main.js"></script>
</body>

</html>