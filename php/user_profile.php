<?php
include('dbcon.php');
session_start();


if (isset($_SESSION['email'])) {
    $sql = "SELECT * from signup where email='$_SESSION[email]'";
    $res = mysqli_query($connect, $sql);
    $row = mysqli_fetch_assoc($res);
    $_SESSION['id'] = $row['id'];
    $A_name = $row['name'];
    $A_mail = $row['email'];
}
if (isset($_GET['proposal']) && $_SESSION['is_login']) {
    $Work_ID = $_GET['proposal'];
    $Seller_ID = $row['id'];
    $Buyer_ID =
        $_SESSION['Work_ID'] = $Work_ID;
    header('location:proposal.php');
}
?>


<?php
if (isset($_GET['cancel'])) {
    $proposal_id = $_GET['cancel'];
    $del = "DELETE FROM proposal where proposal_id='$proposal_id'";
    $res3 = mysqli_query($connect, $del);
    if ($res3) {
        $sqlcus = "SELECT * from proposal";
        // $sqlcus="SELECT * FROM order_info where CustomerID='$CustomerID'";
    }
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/blogger_profile.css">
    <!-- <link rel="stylesheet" href="../css/tribute.css?v=<?php echo time(); ?>"> -->
    <link rel="stylesheet" href="../css/blog.css=<?php echo time(); ?>">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">


    <style>
        .social-links {
            padding: 10px;
            font-size: 50px;
            position: absolute;
            justify-content: center;
            bottom: 50px;
            left: 100px;
        }

        .social-links a {
            font-size: 40px;
            padding: 10px;
            color: #142850;
            border: none;
            outline: 0;
            display: inline-block !important;
            /* padding: 8px; */
            color: white;
            /* background-color: #142850; */
            cursor: pointer;
            /* width: 100%; */
            /* font-size: 18px; */
            /* margin-top: auto; */

        }


        .tribute .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 400px;
            /* margin: auto; */
            text-align: center;
            height: 500px;

        }

        .title {
            color: grey;
            font-size: 18px;
        }

        .tribute .card .seedet {
            border: none;
            outline: 0;
            display: inline-block !important;
            padding: 8px;
            color: white;
            background-color: #142850;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            margin-top: auto;
        }


        .tribute a,
        h1 {
            text-decoration: none;
            font-size: 22px;
            color: #142850;
        }

        button:hover,
        a:hover {
            opacity: 0.7;
        }

        .center {
            display: block;
            /* margin-left: auto;
    margin-right: auto; */
            width: 50%;
        }

        .blog-list2 #blog_btn3 {
            background-color: #142850 !important;
        }
    </style>
</head>

<body>
    <?php
    include("navbar.php");
    ?>
    <div class="container">
        <div class="text-center m-4">
            <h3> Welcome to CSWiki <?php echo $row['name']; ?> !</h3>
        </div>
        <?php
        $sql2 = "SELECT * FROM author where Author_email='$_SESSION[email]'";
        $res2 = mysqli_query($connect, $sql2);
        $row2 = mysqli_fetch_assoc($res2);
        if (mysqli_num_rows($res2) > 0) {
        ?>
            <div class="card text-center mb-5" style="width: 18rem;">
                <div class="card-body">
                    <h6 class="card-title">Do you wanna add a new blog?</h6>
                    <?php
                    if (isset($_POST['upload_blog'])) {
                        $A_ID = $row2['Author_ID'];
                        $_SESSION['Author_ID'] = $A_ID;
                    ?>
                        <script>
                            window.location.href = "upload_blog.php";
                        </script>
                    <?php
                    }
                    ?>
                    <form method="post" action="" enctype="multipart/form-data">
                        <button type="submit" class="btn btn-info" name="upload_blog"><i class="fas fa-plus-circle"></i></button>
                    </form>
                    <!-- <a href="#" class="btn btn-info"><i class="fas fa-plus-circle"></i></a> -->
                </div>
            </div>
        <?php
        } else {
        ?>
            <div class="card text-center mb-5" style="width: 18rem;">
                <div class="card-body">
                    <h6 class="card-title">Do you wanna add a new blog?</h6>
                    <?php
                    if (isset($_POST['upload'])) {
                        $query = "INSERT into author(Author_Name,Author_Email,Author_Image,Description)
                    values ('$A_name','$A_mail','','')";
                        $insertequery = mysqli_query($connect, $query);
                        if ($insertequery) {
                    ?>
                            <script>
                                window.location.reload();
                            </script>
                            <!-- header('location:user_profile.php'); -->
                    <?php
                        } else {
                            echo "not added";
                        }
                    }
                    ?>
                    <form method="post" action="" enctype="multipart/form-data">
                        <button type="submit" class="btn btn-info" name="upload">Join as an author</button>
                    </form>
                </div>
            </div>
        <?php
        }
        ?>
        <br>
        <div class="product container ">
            <?php
            if ($connect) {
                $art = "SELECT * from blog inner join author using(Author_ID) where Author_ID='$row2[Author_ID]';";
                $res = mysqli_query($connect, $art);
            ?>
                <?php
                if (mysqli_num_rows($res) > 0) {
                ?>
                    <h6>All blogs written by <?php echo $row['name']; ?></h6>
                <?php } ?>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <?php
                    while ($row = mysqli_fetch_assoc($res)) :
                    ?>
                        <div class="col pt-3">
                            <div class="card blog mb-3" style="width: 18rem; height: 12rem;">
                                <!-- <img class="card-img-top" src="../image/<?php echo ['Image']; ?>" style="width: 100%"
                        alt="Card image cap"> -->
                                <div class="card-body">
                                    <div class="blog-list">
                                        <div>
                                            <a href="#" title="blog about education"><?php echo $row['Topic']; ?></a>
                                        </div>
                                        <span><i class="fa fa-calendar me-1"></i>
                                            <?php echo $row['Date']; ?></span>
                                        </a>
                                        </span>
                                    </div>
                                    <h5 class="blog-title"><a href="blog.php?article=<?php echo $row['Blog_ID']; ?>" rel="bookmark"><?php echo $row['Title']; ?></a></h5>
                                    <div class="d-flex align-items-center justify-content-between blog-list">
                                        <div class="author d-flex align-items-center">

                                            <a class="fw-bold" style="font-size: 13px;" href="blog.php?author=<?php echo $row['Author_ID']; ?>">
                                                <span><?php echo $row['Author_Name']; ?></span>
                                            </a>
                                        </div>

                                        <a href="blog.php?article=<?php echo $row['Blog_ID']; ?>" class="btn btn-primary btn-info text-light btn-sm" tabindex="-1" role="button" aria-disabled="true">Read full blog</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
            <?php
            }
            ?>
        </div>

        <div class="container product tribute">
            <?php
            if ($connect) {
                $sqlquery = "SELECT * from (scientist inner join `follow` using(Scientist_ID)) inner join signup using(email) where email='$_SESSION[email]';";
                $fres = mysqli_query($connect, $sqlquery);
            ?>
                <?php
                if (mysqli_num_rows($fres) > 0) {
                ?>
                <br>
                    <h1>Following:</h1>
                    <br>
                <?php } ?>
                <div class="row">
                    <?php
                    while ($frow = mysqli_fetch_assoc($fres)) :
                    ?>
                        <div class="col-md-4">
                            <div class="card d-flex align-items-center p-2" style="width: 18rem; height: 28rem;">
                                <img src="../image/<?php echo $frow['Sci_img']; ?>" alt="John" style="width:200px; height: 200px; " class="center  rounded-circle">
                                <h3><?php echo $frow['Sci_Name']; ?></h3>
                                <?php
                                if ($connect) {
                                    $fsql1 = "SELECT * from (scientist inner join work using(Scientist_ID)) inner join research_area using(Sub_ID) where Sci_Name='$frow[Sci_Name]'";
                                    $fresult = mysqli_query($connect, $fsql1);
                                }
                                ?>
                                <p class="title"><?php
                                                    while ($frow1 = mysqli_fetch_assoc($fresult)) :
                                                    ?>
                                        <span class="fs-6"><?php echo $frow1['Sub_Name']; ?>, </span>
                                    <?php endwhile; ?>
                                </p>
                                <p><b><?php echo $frow['Work_place']; ?></b></p>

                                <a class="seedet" href="tribute.php?profile=<?php echo $frow['Scientist_ID']; ?>" class="btn btn-block text-light link_btn" role="button" aria-disabled="true">See Details</a>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
            <?php
            }
            ?>
        </div>
        <div class="product container ">
            <?php
            if ($connect) {
                $art = "SELECT * from (blog inner join `save` using(Blog_ID)) inner join signup using(email) where email='$_SESSION[email]';";
                $res = mysqli_query($connect, $art);
            ?>
                <?php
                if (mysqli_num_rows($res) > 0) {
                ?>
                    <br>
                    <h1>Saved Blogs:</h1>
                    <br>
                <?php } ?>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <?php
                    while ($row = mysqli_fetch_assoc($res)) :
                    ?>
                        <div class="col pt-3">
                            <div class="card blog mb-3" style="width: 18rem; height: 25rem;">
                                <img class="card-img-top" src="../image/<?php echo $row['Image']; ?>" style="width: 100% ; height:50%" alt="Card image cap">
                                <div class="card-body">
                                    <div class="blog-list">
                                        <div>
                                            <a href="#" title="blog about education"><?php echo $row['Topic']; ?></a>
                                        </div>
                                        <span><i class="fa fa-calendar me-1"></i>
                                            <?php echo $row['Date']; ?></span>
                                        </a>
                                        </span>
                                    </div>
                                    <h5 class="blog-title"><a href="blog.php?article=<?php echo $row['Blog_ID']; ?>" rel="bookmark"><?php echo $row['Title']; ?></a></h5>
                                    <div class="d-flex align-items-center justify-content-between blog-list2">
                                        <?php
                                        $sql = "SELECT * from blog inner join author using(Author_ID) where Blog_ID='$row[Blog_ID]';";
                                        $result = mysqli_query($connect, $sql);
                                        $row2 = mysqli_fetch_assoc($result);
                                        ?>
                                        <div class="author d-flex align-items-center" style="position:absolute;bottom:15px;">

                                            <a class="fw-bold" style="font-size: 13px;" href="blog.php?author=<?php echo $row2['Author_ID']; ?>">
                                                <span><?php echo $row2['Author_Name']; ?></span>
                                            </a>
                                        </div>

                                        <a href="blog.php?article=<?php echo $row['Blog_ID']; ?>" class="btn  text-light btn-sm" id="blog_btn3" tabindex="-1" role="button" a ria-disabled="true" style="position:absolute;bottom:10px; left:170px; color:#142850;">Read full blog</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
            <?php
            }
            ?>
        </div>
        <br>
                    <h1>Shared Work:</h1>
                    <br>
        <div class="card text-center mb-5" style="width: 18rem;">
            <div class="card-body">
                <h6 class="card-title">Add Details about your Research</h6>
                <form method="post" action="" enctype="multipart/form-data">
                    <a href="upload_offer.php" type="submit" class="btn btn-info" name="upload"><i class="fas fa-plus-circle"></i></a>
                </form>
                
            </div>
        </div>
        <div class="product container ">
            <?php
            if ($connect) {
                $art = "SELECT * from post_work inner join signup using(id) where id='$_SESSION[id]';";
                $res = mysqli_query($connect, $art);
            ?>
                <?php
                if (mysqli_num_rows($res) > 0) {
                ?>
                    <h4 class="text-center">Given offer</h4>
                    <table class="table table-striped table-hover table-bordered mt-2">
                        <thead class="bg-dark text-light text-center">

                            <th>Title</th>
                            <th>Area</th>
                        </thead>
                        <?php while ($row = mysqli_fetch_array($res)) : ?>
                            <tr class="text-center">
                                <td><a href="user_profile.php?proposal=<?php echo $row['work_id']; ?>"><?php echo $row['title']; ?></a></td>
                                <td><?php echo $row['area']; ?></td>
                            </tr>
                        <?php endwhile; ?>
                    </table>
                <?php } ?>
            <?php
            }
            ?>
        </div>
        <div class="product container ">
            <?php
            if ($connect) {
                $art = "SELECT * from (proposal inner join post_work using(work_id)) inner join signup on (post_work.id)=signup.id where seller_id='$_SESSION[id]'";
                $res = mysqli_query($connect, $art);
            ?>
                <?php
                if (mysqli_num_rows($res) > 0) {
                ?>
                    <h4 class="text-center">Sent offer</h4>
                    <table class="table table-striped table-hover table-bordered mt-2">
                        <thead class="bg-dark text-light text-center">

                            <th>Title</th>
                            <th>Area</th>
                            <th>Seller</th>
                            <th>CV</th>
                            <th>Paper link</th>
                            <th>Order status</th>
                            <th>Cancel order</th>
                        </thead>
                        <?php while ($row = mysqli_fetch_array($res)) : ?>
                            <tr class="text-center">
                                <td><a href="user_profile.php?proposal=<?php echo $row['work_id']; ?>"><?php echo $row['title']; ?></a></td>
                                <td><?php echo $row['area']; ?></td>
                                <td><?php echo $row['name']; ?></td>
                                <td><a href="../user_image/<?php echo $row['cv']; ?>">Resume</a></td>
                                <td><a href="<?php echo $row['Paper'];?>">Paper link</a></td>
                                <?php
                                if ($row['flag'] == 0) {
                                ?>
                                    <td><?php echo "Order processed" ?><i class='fa fa-pause-circle' style='color: teal'></i></td>

                                <?php
                                } else {
                                ?>
                                    <td><?php echo "Confirmed" ?><i class='fa fa-check-circle' style='color: green'></i></td>
                                <?php
                                }
                                ?>
                                <?php
                                if ($row['flag'] == 0) {
                                ?>
                                    <td><a href="user_profile.php?cancel=<?php echo $row['proposal_id']; ?>" class="btn btn-danger">Cancel Order</a></button></td>
                                <?php
                                } else {
                                ?>
                                    <td><button type="button" class="btn btn-danger" disabled>Cancel order</button></td>
                                <?php
                                }
                                ?>
                            </tr>
                        <?php endwhile; ?>
                    </table>
                <?php } ?>
            <?php
            }
            ?>
        </div>

    </div>
    <?php include("footer.php"); ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="../js/jquery-3.5.1.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="../js/wow.js"></script>
    <script>
        new WOW.init();
    </script>
    <script src="../js/main.js"></script>
</body>

</html>