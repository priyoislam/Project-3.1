<?php
include('dbcon.php');
session_start();
if ($connect) {
    $sql = "SELECT * from post_work inner join signup using(id)";
    $res = mysqli_query($connect, $sql);
}
if (isset($_GET['proposal']) && $_SESSION['is_login']) {
    $Work_ID = $_GET['proposal'];
    $Seller_ID=$row['id'];
    $Buyer_ID=
    $_SESSION['Work_ID'] = $Work_ID;
    header('location:proposal.php');
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
    <h1 class="text-center m-3">Ongoing Research</h1>
    <br>
    <div class="product container mt-2 mb-2">
    <div class="row">
    <?php
            while ($row = mysqli_fetch_assoc($res)) :
            ?>
            <div class="col">
                <div class="card text-center mb-4" style="width: 18rem; height: 13rem;">
                    <div class="card-body">
                        <h6 class="card-title"><?php echo $row['title']; ?></h6>
                        <a class="fw-bold" style="font-size: 13px;" href="#">
                            <span><?php echo $row['name']; ?></span>
                        </a>
                    </div>
                    <div class="card-footer c-footer text-center">
                            <a href="invitations.php?proposal=<?php echo $row['work_id']; ?>" class="btn btn-sm text-light font-weight-bold hhn" id="blog_btn" tabindex="-1" role="button" aria-disabled="true">See Details</a>
                        </div>
                </div>
            </div>
        <?php
            endwhile;
            ?>
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