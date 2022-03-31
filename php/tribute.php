<?php
include('dbcon.php');
session_start();
if (isset($_GET['profile'])) {
    $Sci_ID = $_GET['profile'];
    $_SESSION['Sci_ID'] = $Sci_ID;
    header('location:scientist_profile.php');
}
?>
<?php
if (isset($_POST['search'])) {
    $valuetosearch = $_POST['valueTosearch'];
    $query = "SELECT * FROM scientist where Sci_Name LIKE '%$valuetosearch%'";
    $res = mysqli_query($connect, $query);
} else {
    $art = "SELECT * from scientist where Pub_Count!='0'";
    $res = mysqli_query($connect, $art);
    $valuetosearch = "";
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
    <?php include("navbar.php"); ?>


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
    <div class="container">
        <h4 class="text-center m-5"><em><q>Try searching specific pioneer using name.</q></em></h4>
    </div>
    <div class="container">
    <form action="" method="POST" class="text-center">
        
                <input class="form-control text-center col-md-5 mx-auto mb-1" type="text" name="valueTosearch" placeholder="Enter pioneer name" value="<?php echo $valuetosearch; ?>">
                <!-- <input type="submit" name="search" value="Filter"><br><br> -->
            <input class="form-group col-md-1 btn btn-info" type="submit" name="search" value="Search" style="background-color: #142850;"><br><br>
        <!-- <input type="text" name="valueTosearch" placeholder="Value To Search" value="<?php echo $valuetosearch; ?>"><br><br>
        <input type="submit" name="search" value="Filter"><br><br> -->
    </form>
    </div>
    <div class="container mt-5 tribute">
        <div class="row">
            <?php
            while ($row = mysqli_fetch_assoc($res)) :
            ?>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img src="../image/<?php echo $row['Sci_img']; ?>" alt="John" style="width:200px; height: 200px; align-items:center" class="center p-2 rounded-circle">
                        <h3><?php echo $row['Sci_Name']; ?></h3>
                        <?php
                        if ($connect) {
                            $sql1 = "SELECT * from (scientist inner join work using(Scientist_ID)) inner join research_area using(Sub_ID) where Sci_Name='$row[Sci_Name]'";
                            $result = mysqli_query($connect, $sql1);
                        }
                        ?>
                        <p class="title"><?php
                                            while ($row1 = mysqli_fetch_assoc($result)) :
                                            ?>
                                <span class="fs-6"><?php echo $row1['Sub_Name']; ?>, </span>
                            <?php endwhile; ?>
                        </p>
                        <p><b><?php echo $row['Work_place']; ?></b></p>
                        <div class="d-flex justify-content-center social-links">

                            <a href="<?php echo $row['Youtube']; ?>"><i class="fab fa-youtube"></i></a>
                            <a href="<?php echo $row['research_gate']; ?>"><i class="fab fa-researchgate"></i></a>
                            <a href="<?php echo $row['wikipedia']; ?>"><i class="fab fa-wikipedia-w"></i></a>

                        </div>


                       <a class="seedet" href="tribute.php?profile=<?php echo $row['Scientist_ID']; ?>" class="btn btn-block text-light link_btn" role="button" aria-disabled="true">See Details</a>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>


    </div>


    <?php include("footer.php"); ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="../js/wow.js"></script>
    <script>
        new WOW.init();
    </script>
    <script src="../js/main.js"></script>
</body>

</html>