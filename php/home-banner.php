

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/cardslider.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/home_banner.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap"
        rel="stylesheet">

        <link rel="stylesheet" href="../OwlCarousel2-2.3.4/docs/assets/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href=".../OwlCarousel2-2.3.4/docs/assets/owlcarousel/assets/owl.theme.default.min.css">

<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../OwlCarousel2-2.3.4/docs/assets/owlcarousel/owl.carousel.min.js"></script>



       
</head>

    

</head>

<body>
    <div class="container">
    <!-- <a class="owl-prev&#x27" onclick="plusSlides(-1)"></a> -->
        <!-- <a class="next" onclick="plusSlides(1)">&#10095;</a> -->
        <div id="owl-banner" class="owl-carousel">
        <div class="items">
          
            <img src="../image/csa.jpg" style="width:100%">
        </div>
      
        <div class="items">
          
            <img src="../image/csa3.jpeg" style="width:100%">
        </div>
      
        <div class="items">
          
            <img src="../image/csa4.jpg" style="width:100%">
        </div>
      
        <div class="items">
          
            <img src="../image/csa2.jpg" style="width:100%">
        </div>
          </div>


    </div>
  
      <script>
          var owl = $('#owl-banner');
            owl.owlCarousel({
                items:1,
                loop:true,
                margin:10,
                autoplay:true,
                autoplayTimeout:5000,
                 nav:true,
                autoplayHoverPause:true,
                // navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
                navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
                // navText:["<div class='nav-btn prev-slide'></div>","<div class='nav-btn next-slide'></div>"]
            });
            $('.play').on('click',function(){
                owl.trigger('play.owl.autoplay',[1000])
            })
            $('.stop').on('click',function(){
                owl.trigger('stop.owl.autoplay')
            })
      </script>

    



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>




</body>
</html>