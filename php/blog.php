<?php
    include_once('database.php');
    session_start();
    if(isset($_GET['author'])){
        $Author_ID=$_GET['author'];
        $_SESSION['Author_ID']=$Author_ID;
        echo $_SESSION['Author_ID'];
        header('location:blogger_profile.php');
        }
        if(isset($_GET['article'])){
            $Article_ID=$_GET['article'];
            $_SESSION['Article_ID']=$Article_ID;
            echo $_SESSION['Article_ID'];
            header('location:article.php');
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
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/blog.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">
</head>

<body>
    <div class="header">
        <nav class="navbar navbar-expand-lg navbar-dark nav_bg">
            <div class="container">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="blog.html">Blog<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sign in</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sign up</a>
                        </li>
                </div>
            </div>
        </nav>
    </div>

    <div class="hero-image">
        <div class="hero-text">
            <h1>Our Blog</h1>
            <p><q>Reading is essential for those who seek to rise above the ordinary.</q></p>
        </div>
    </div>

    <div class="product container mt-5">
        <?php
        if ($connect) {
            $art = "SELECT * from blog inner join author using(Author_ID)";
            $res = mysqli_query($connect, $art);
        ?>
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <?php
                while ($row = mysqli_fetch_assoc($res)) :
                ?>
                    <div class="col">
                        <div class="card blog">
                            <img class="card-img-top" src="../image/<?php echo $row['Image'];?>" style="width: 100%" alt="Card image cap">
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
                                <h5 class="blog-title"><a href="blog.php?article=<?php echo $row['Article_ID'];?>" rel="bookmark"><?php echo $row['Title']; ?></a></h5>
                                <div class="d-flex align-items-center justify-content-between blog-list">
                                    <div class="author d-flex align-items-center">
                        
                                        <a class="fw-bold" style="font-size: 13px;" href="blog.php?author=<?php echo $row['Author_ID'];?>">
                                            <span><?php echo $row['Author_Name'];?></span>
                                        </a>
                                    </div>
                                
                                    <a href="blog.php?article=<?php echo $row['Article_ID'];?>" class="btn btn-primary btn-info text-light btn-sm" tabindex="-1" role="button" aria-disabled="true">Read full blog</a>
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


    <footer class="text-center text-lg-starttext-muted mt-5 blog_footer">
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
            © 2021 Copyright:
            <a class="text-reset fw-bold" href="https://mdbootstrap.com/">Research 101</a>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="../js/wow.js"></script>
    <script>
        new WOW.init();
    </script>
    <script src="../js/main.js"></script>
</body>

</html>