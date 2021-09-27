<?php
    include('dbcon.php');
    session_start();
    if(isset($_GET['profile'])){
            $Sci_ID=$_GET['profile'];
            $_SESSION['Sci_ID']=$Sci_ID;
            header('location:scientist_profile.php');
    }
?>
<?php
if($connect){
    $art = "SELECT * from scientist where Pub_Count!='0'";
    $res = mysqli_query($connect, $art);
    $valuetosearch="";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/bootstrap.min.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/animate.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/index.css?v=<?php echo time(); ?>">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap"
        rel="stylesheet">


           <!-- Java Script -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>

<body>
    
<?php include("navbar.php");?>

<?php include("slideshow.php");?>



    
    <div class="container text-center description mt-5">
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="card" style="width: 22rem;">
                    <img src="../image/ressub.jfif" class="card-img-top i20" alt="...">
                    <div class="card-body">
                        <h4 class="card-title"><b>Research Subject</b></h4>
                        
                        <p class="card-text">Topic selection is based on many factors and considerations, including relevant, significant, and interesting. It's important because it will keep one motivated in his/her  research journey.</p>
                        <a href="#">read more <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="card" style="width: 22rem;">
                    <img src="../image/relatedpages.jpg" class="card-img-top i20" alt="...">
                    <div class="card-body">
                        <h4 class="card-title"><b>Related Papers</b></h4>
                        <p class="card-text">Reading a research paper means reading the chronologically ordered structure of someone's experiments which helps one to design his/her own experiment.</p>
                        <a href="#">read more <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="card" style="width: 22rem;">
                    <img src="../image/authors.jpg" class="card-img-top i20" alt="...">
                    <div class="card-body">
                        <h4 class="card-title"><b>Authors</b></h4>
                        <p class="card-text">The first author is the one who has made the most intellectual contribution to the work, designing the study, acquiring and analyzing data, and writing the manuscript.</p>
                        <a href="#">Read more <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <h5 class="text-center p-5 idea"><em><q>Try searching  specific research papers by specific authors or
            even research subject!</q></em></h5>

            <?php include("searchbytopic.php");?>
            <?php include("searchbyauthor.php");?>
            <?php include("pioneer.php");?>

   
    <div class="container text-center description mt-3 pioneers">
        <h3 class="p-4"><q>Pioneers of Computer Science</q></h3>
        
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <div class="card">
                    <img src="../image/john_mccarthy.jpg" alt="John" style="width:90%; align-items:center; height:200px" class="center">
                    <h1>John McCarthy</h1>
                    <p class="title">Artificial intelligence, Lisp, circumscription, situation calculus</p>
                    

                    <button>See Details</button>
                </div>
            </div>

            <div class="col-sm-6 col-md-3">
                <div class="card">
                    <img src="../image/joe_armstrong.jpg" alt="John" style="width:90%; align-items:center; height:200px" class="center">
                    <h1>Joe Armstrong</h1>
                    <p class="title">Artificial intelligence, Lisp, circumscription, situation calculus</p>
                    

                    <button>See Details</button>
                </div>
            </div>

            <div class="col-sm-6 col-md-3">
                <div class="card">
                    <img src="../image/alan_kay.jpg" alt="John" style="width:80%; align-items:center; height:200px" class="center">
                    <h1>Alan Kay</h1>
                    <p class="title">OOP , Dynabook , Smalltalk</p>
                    

                    <button>See Details</button>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="card">
                    <img src="../image/marvin_minsky.jpg" alt="John" style="width:80%; align-items:center; height:200px" class="center">
                    <h1>Marvin Minsky</h1>
                    <p class="title">Artificial intelligence</p>
                    

                    <button>See Details</button>
                </div>
            </div>

        </div>

    </div>

    <?php include("footer.php");?>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="../js/wow.js"></script>
    
    <script src="../js/main.js"></script>
<!-- 
    <script>
                        var slideIndex = 1;
                showSlides(slideIndex);

                // Next/previous controls
                function plusSlides(n) {
                showSlides(slideIndex += n);
                }

                // Thumbnail image controls
                function currentSlide(n) {
                showSlides(slideIndex = n);
                }

                function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                var captionText = document.getElementById("caption");
                if (n > slides.length) {slideIndex = 1}
                if (n < 1) {slideIndex = slides.length}
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block";
                dots[slideIndex-1].className += " active";
                captionText.innerHTML = dots[slideIndex-1].alt;
                }
    </script> -->





</body>

</html>