<?php
include('dbcon.php');
session_start();
if (isset($_SESSION['Work_ID'])) {
    $sql = "SELECT * from post_work inner join signup using(id) where work_ID='$_SESSION[Work_ID]'";
    $res = mysqli_query($connect, $sql);
    $row = mysqli_fetch_assoc($res);
}
?>

<?php
if (isset($_GET['delivery'])) {
    $proposal_id = $_GET['delivery'];
    $sql = "UPDATE proposal SET `flag` = '1' WHERE proposal_id='$proposal_id'";
    $res4 = mysqli_query($connect, $sql);
    if ($res4) {
        header('location:proposal.php');
    }
}
?>

<?php
if (isset($_GET['check'])) {
    $area = $_GET['check'];
    if($area=$row['research_area']){
        header('location:submit_proposal.php');
    }
    else {
        echo '<script>alert("Your research interest does not match the requirement.")</script>';
        header('location:submit_proposal.php');
    }

}
?>

<?php
    if(isset($_GET['cancel'])){
        $proposal_id=$_GET['cancel'];
        $del="DELETE FROM proposal where proposal_id='$proposal_id'";
        $res3=mysqli_query($connect,$del);
        if($res3){
            $sqlcus="SELECT * from proposal";
           // $sqlcus="SELECT * FROM order_info where CustomerID='$CustomerID'";
        }
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
    <link rel="stylesheet" href="../css/blogger_profile.css">
    <link rel="stylesheet" href="../css/proposal.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">
</head>
<script>
    $(function() {
        var includes = $('[data-include]');
        jQuery.each(includes, function() {
            var file = $(this).data('include') + '.html';
            $(this).load(file);
        });
    });
</script>

<body>

    <?php
    include("navbar.php");
    ?>
    <div class="container text-center m-3">


        <h3>Research Title : <?php echo $row['title']; ?></h3>
        <h5>Area / Topics - <?php echo $row['area']; ?></h5>


    </div>
    <div class="container">

        <h3>Overview</h3>

        <div class="card">

            <div class="card-body ">

                <p><?php echo $row['overview']; ?></p>

            </div>
        </div>
        <br>
        <h3>Requirement</h3>
        <div class="card">
            <div class="card-body ">
                <p><?php echo $row['requirment']; ?></p>
            </div>
        </div>
        <br>
        <h3>Document</h3>
        <div class="card ">
            <div class="card-body">
                <ul>
                    <li><?php echo "<b>Paper: </b>"?> <a href="../user_image/<?php $row['paper'];?>"><?php echo $row['paper'];?></a></li>
                </ul>
            </div>
        </div>
        <br>
        <h3>Researchers </h3>
        <div class="card ">

            <div class="card-body">



                <ul>
                    <li><?php echo "<b>Name: </b>" . $row['name'] . ', ' . "<b>Email: </b>" . $row['email']; ?></li>


                </ul>

            </div>
        </div>
        <br>

        <br>
        <?php
        if ($_SESSION['id'] == $row['id']) {
        ?>
            <?php
            if ($connect) {
                $art = "SELECT * from (proposal inner join post_work using(work_id)) inner join signup on (proposal.seller_id)=signup.id where work_id='$_SESSION[Work_ID]'";
                $res = mysqli_query($connect, $art);
            ?>
                <?php
                if (mysqli_num_rows($res) > 0) {
                ?>
                    <h4 class="text-center">Given offer</h4>
                    <table class="table table-striped table-hover table-bordered mt-2">
                        <thead class="bg-dark text-light text-center">

                            <th>Name</th>
                            <th>Message</th>
                            <th>Confirm</th>
                            <th>Cancel order</th>
                        </thead>
                        <?php while ($row = mysqli_fetch_array($res)) : ?>
                            <tr class="text-center">
                                <td><?php echo $row['name']; ?></td>
                                <td><?php echo $row['letter']; ?></td>
                                <?php
                                if ($row['flag'] == 0) {
                                ?>
                                    <td><a href="proposal.php?delivery=<?php echo $row['proposal_id']; ?>" class="btn btn-outline-primary">Confirm</a></td>
                                <?php
                                } else {
                                ?>
                                    <td><?php echo "Confirmed" ?><i class='fa fa-check-circle' style='color: blue'></i></td>
                                <?php
                                }
                                ?>
                                <?php
                                if ($row['flag'] == 0) {
                                ?>
                                    <td><a href="proposal.php?cancel=<?php echo $row['proposal_id']; ?>" class="btn btn-danger">Cancel Order</a></button></td>
                                <?php
                                } else {
                                ?>
                                    <td><button type="button" class="btn btn-danger" disabled>Cancel order</button></td>
                                <?php
                                }
                                ?>
                            </tr>
                        <?php endwhile; ?>
                    </table>
                <?php } ?>
            <?php
            }
            ?>
        <?php } else { ?>
            <div class="col-md-12 text-center">
                <a href="proposal.php?check=<?php echo $row['area'];?>" class="btn btn-primary">Submit proposal</a>
            </div>
        <?php } ?>
        <br>
    </div>
    <?php
    include("footer.php");
    ?>








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