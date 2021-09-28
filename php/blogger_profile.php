<?php
include('dbcon.php');
session_start();
if (isset($_SESSION['Author_ID'])) {
    $sql = "SELECT * from blog inner join author using(Author_ID) where Author_ID='$_SESSION[Author_ID]'";
    $res = mysqli_query($connect, $sql);
    $row = mysqli_fetch_assoc($res);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/blogger_profile.css?v=<?php echo time();?>">
    <link rel="stylesheet" href="../css/blog.css?v=<?php echo time();?>">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">
</head>

<body>

<?php include("navbar.php");?>
<br>

<div id="blog-profile">

<div class="container">
<div class="d-flex flex-column justify-content-center align-items-center text-center">
    <h1>Writers Profile</h1>
        <img class="center rounded-circle" src="../image/<?php echo $row['Author_Image'];?>" alt="not found" style="width: 175px; height: 175px;">
        <br>
        <h3><?php echo $row['Author_Name'];?></h3>
        <br>
        <p><?php echo $row['Description']; ?></p>
    </div>

</div>
<br>
    
<h3 class="text-center">All blogs by <?php echo $row['Author_Name']; ?></h3>
    
    <div class="product container mt-5">
      
        <?php
        if ($connect) {
            $art = "SELECT * from blog inner join author using(Author_ID) where Author_ID='$_SESSION[Author_ID]'";
            $res = mysqli_query($connect, $art);
        ?>
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <?php
                while ($row = mysqli_fetch_assoc($res)) :
                ?>
                    <div class="col">
                        <div class="card blog">
                            <img class="card-img-top" src="../image/<?php echo $row['Image']; ?>" style="width: 100%" alt="Card image cap"> 
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
                                <h5 class="blog-title"><a href="blog.php?article=<?php echo $row['Blog_ID'];?>" rel="bookmark"><?php echo $row['Title']; ?></a></h5>
                                <div class="d-flex align-items-center justify-content-between blog-list2">
                                    <div class="author d-flex align-items-center" style="position:absolute;bottom:15px;">

                                        <a class="fw-bold" style="font-size: 13px;" href="blog.php?author=<?php echo $row['Author_ID']; ?>">
                                            <span><?php echo $row['Author_Name']; ?></span>
                                        </a>
                                    </div>

                                    <a href="blog.php?article=<?php echo $row['Blog_ID'];?>" 
                                    class="btn  text-light btn-sm hhn"  id="blog_btn3" tabindex="-1" role="button"
                                aria-disabled="true" style="position:absolute;bottom:10px; left:230px;">Read full blog</a>
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


</div>


    <br>
    <?php include("footer.php");?>

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