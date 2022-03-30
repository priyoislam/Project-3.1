<?php
    include('dbcon.php');
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
    <link rel="stylesheet" href="../css/home-pioneer.css?v=<?php echo time();?>">
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
   
        <div id="owl-pioneer" class="owl-carousel pioneers">
        
          
                    
                        <?php
                            while ($row = mysqli_fetch_assoc($res)) :
                            ?>
                        <div class="items">
                            <div class="card d-flex flex-column justify-content-center align-items-center text-cente">
                                <img src="../image/<?php echo $row['Sci_img'];?>" alt="John" style="width:200px; height: 200px; align-items:center"
                                    class="center p-2 rounded-circle">
                                <h3><?php echo $row['Sci_Name'];?></h3>
                                <?php 
                                if($connect){
                                $sql1 = "SELECT * from (scientist inner join work using(Scientist_ID)) inner join research_area using(Sub_ID) where Sci_Name='$row[Sci_Name]'";
                                $result = mysqli_query($connect, $sql1);
                                }
                                ?>
                                <p class="title"><?php 
                                        while ($row1 = mysqli_fetch_assoc($result)) :
                                    ?>
                                    <span class="fs-6"><?php echo $row1['Sub_Name'];?>, </span>
                                    <?php endwhile; ?>
                                </p>

                                <a href="tribute.php?profile=<?php echo $row['Scientist_ID'];?>" class="btn btn-block text-light" role="button" aria-disabled="true">See Details</a>
                            </div>
                            </div>
                        
                        <?php endwhile; ?>
                    
    
          </div>



          
    </div>
  
      <script>
          var owl = $('#owl-pioneer');
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
                loop:true,
                margin:10,
                autoplay:true,
                autoplayTimeout:2000,
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