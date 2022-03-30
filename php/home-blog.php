<?php
include('dbcon.php');
if (isset($_GET['author'])) {
    $Author_ID = $_GET['author'];
    $_SESSION['Author_ID'] = $Author_ID;
    echo $_SESSION['Author_ID'];
    header('location:blogger_profile.php');
}
if (isset($_GET['article'])) {
    $Blog_ID = $_GET['article'];
    $_SESSION['Blog_ID'] = $Blog_ID;
    echo $_SESSION['Blog_ID'];
    header('location:article.php');
}
?>

<?php
if ($connect) {
    $art = "SELECT * from blog inner join author using(Author_ID)";
    $res = mysqli_query($connect, $art);
} ?>





<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/cardslider.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

    <link rel="stylesheet" href="../css/home-blog.css?v=<?php echo time(); ?>">
    <!-- <link rel="stylesheet" href="../css/blog.css"> -->
    <link rel="stylesheet" href="../css/blog.css?v=<?php echo time(); ?>">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../OwlCarousel2-2.3.4/docs/assets/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href=".../OwlCarousel2-2.3.4/docs/assets/owlcarousel/assets/owl.theme.default.min.css">

    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../OwlCarousel2-2.3.4/docs/assets/owlcarousel/owl.carousel.min.js"></script>




</head>



<body>
    <div class="container">

        <div id="owl-blog" class="owl-carousel ">
            <?php
            while ($row = mysqli_fetch_assoc($res)) :
            ?>
                <div class="items">
                    <div class="card blog">
                        <img class="card-img-top" src="../image/<?php echo $row['Image']; ?>" style="width: 100%" alt="Card image cap">
                        <div class="card-body ">
                            <div class="blog-list">
                                <div>
                                    <span><?php echo $row['Topic']; ?></span>
                                </div>
                                <span><i class="fa fa-calendar me-1"></i>
                                    <?php echo $row['Date']; ?></span>
                                </a>
                                </span>
                            </div>
                            <h5 class="blog-title"><a href="blog.php?article=<?php echo $row['Blog_ID']; ?>" rel="bookmark"><?php echo $row['Title']; ?></a></h5>
                            <div class="d-flex align-items-center justify-content-between blog-list2">
                                <div class="author d-flex align-items-center">

                                    <a class="fw-bold" style="font-size: 13px;" href="blog.php?author=<?php echo $row['Author_ID']; ?>">
                                        <span><?php echo $row['Author_Name']; ?></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer c-footer text-center">
                            <a href="blog.php?article=<?php echo $row['Blog_ID']; ?>" class="btn text-light font-weight-bold hhn" id="blog_btn" tabindex="-1" role="button" aria-disabled="true">Read full blog</a>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>

    <script>
        var owl = $('#owl-blog');
        owl.owlCarousel({
            responsive: {
                0: {
                    items: 1,
                    nav: true
                },
                600: {
                    items: 2,
                    nav: true
                },
                992: {
                    items: 3,
                    nav: true,
                    loop: false
                }
            },
            margin: 10,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            // navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
            // navText:["<div class='nav-btn prev-slide'></div>","<div class='nav-btn next-slide'></div>"]
        });
        $('.play').on('click', function() {
            owl.trigger('play.owl.autoplay', [1000])
        })
        $('.stop').on('click', function() {
            owl.trigger('stop.owl.autoplay')
        })
    </script>





    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>




</body>

</html>