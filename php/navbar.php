<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />




    <!-- CSS -->
    <link rel="stylesheet" href="../css/all.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/navbar.css?v=<?php echo time(); ?>">



    <!-- Java Script -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>



    <div class="container-fluid" id="navs">
        <div class="row">
            <div class="top-nav d-flex justify-content-center">
                <div class="cs_img">
                    <img class="logo" src="../image/logo">
                </div>

                <div class="topright d-flex">
                    <?php if (isset($_SESSION['is_login'])) { ?>
                    <div class="logbtn">
                        <a href="user_profile.php"><button type="button"
                                class="btn btn-lg"><?php echo $_SESSION['name']; ?></button></a>
                    </div>
                    <div class="logbtn">
                        <?php
                            if (isset($_POST['logout'])) {
                                session_destroy();
                                header('location:home.php');
                            }
                            ?>
                        <form method="post" action="" enctype="multipart/form-data">
                            <button type="submit" class="btn btn-lg " name="logout">Log out</button>
                        </form>
                    </div>
                    <?php } else { ?>
                    <div class="logbtn">
                        <a href="login.php"><button type="button " class="btn btn-lg ">Log In</button></a>
                    </div>
                    <div class="logbtn">
                        <a href="signup.php"><button type="button " class="btn btn-lg ">Sign Up</button></a>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="low-nav d-flex  justify-content-center">
                <div>
                    <nav class="navbar  navbar-expand-lg  navbar-dark d-flex justify-content-center ">

                        <!-- Toggler/collapsibe Button -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <ul class="navbar-nav  nav-tabs ">
                                <li class="nav-item ">
                                    <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.php">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="blog.php">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="tribute.php">Tributes</a>
                                </li>

                                <?php if (isset($_SESSION['is_login'])) { ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="feedback.php">Feedback</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="invitations.php">Invitations</a>
                                </li>
                                <?php } ?>

                                <li class="nav-item">
                                    <a class="nav-link" href="contact.php">Contact Us</a>
                                </li>
                            </ul>

                        </div>

                    </nav>
                </div>
            </div>
        </div>

      
    </div>


    <script src="../js/jquery-3.5.1.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="../js/wow.js"></script>

    <script src="../js/main.js"></script>
</body>

</html>