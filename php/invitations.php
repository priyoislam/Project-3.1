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

    <link rel="stylesheet" href="../css/invitation.css?v=<?php echo time(); ?>">
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