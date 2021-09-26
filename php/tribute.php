<?php
    include('dbcon.php');
    
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

<?php
        if ($connect) {
            $art = "SELECT * from blog inner join author using(Author_ID)";
            $res = mysqli_query($connect, $art);
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
    
    <link rel="stylesheet" href="../css/tribute.css?v=<?php echo time(); ?>">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">
</head>

<body>
    <?php include("navbar.php");?>


    <div class="hero-image">
        <div class="hero-text">
            <!-- <h1>Our Blog</h1> -->
            <p><q>The Best way to predict the future is to invent it.</q> - Alan Kay</p>
            
        </div>
        <div class="sub-text">
            <!-- <h1>Our Blog</h1> -->
            <p>We pay our Homage to the legends who invented the future</p>
            
        </div>
        
    </div>
    <form class="d-flex col-12 text-center">
    <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputName">Topic
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputYear">Date
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputYear">Date
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputYear">Date
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                        </label>
                    </div>
                </div>
    </form>

    <div class="container mt-5">
            <div class="row">
                <div class="col-md-4">
                        <div class="card">
                            <img src="../image/jm.png" alt="John" style="width:90%; align-items:center" class="center">
                            <h1>John McCarthy</h1>
                            <p class="title">Artificial intelligence, Lisp, circumscription, situation calculus</p>
                            <p>Stanford University</p>
                            <div class="d-flex justify-content-center social-links">

                            <a href="#"><i class="fab fa-youtube"></i></a>
                            <a href="#"><i class="fab fa-researchgate"></i></a>
                            <a href="#"><i class="fab fa-wikipedia-w"></i></a>

                            </div>
                           
                            

                            <p><button>See Details</button></p>
                        </div>
                </div>
                <div class="col-md-4">
                <div class="card">
                            <img src="../image/jm.png" alt="John" style="width:90%; align-items:center" class="center">
                            <h1>John McCarthy</h1>
                            <p class="title">Artificial intelligence, Lisp, circumscription, situation calculus</p>
                            <p>Stanford University</p>
                            <div class="d-flex justify-content-center social-links">

                            <a href="#"><i class="fab fa-youtube"></i></a>
                            <a href="#"><i class="fab fa-researchgate"></i></a>
                            <a href="#"><i class="fab fa-wikipedia-w"></i></a>

                            </div>
                           
                            

                            <p><button>See Details</button></p>
                        </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                            <img src="../image/jm.png" alt="John" style="width:90%; align-items:center" class="center">
                            <h1>John McCarthy</h1>
                            <p class="title">Artificial intelligence, Lisp, circumscription, situation calculus</p>
                            <p>Stanford University</p>
                            <div class="d-flex justify-content-center social-links">

                            <a href="#"><i class="fab fa-youtube"></i></a>
                            <a href="#"><i class="fab fa-researchgate"></i></a>
                            <a href="#"><i class="fab fa-wikipedia-w"></i></a>

                            </div>
                           
                            

                            <p><button>See Details</button></p>
                        </div>
                </div>
            </div>
           
        
    </div>


    <?php include("footer.php");?>

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