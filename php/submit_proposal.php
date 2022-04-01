<?php
session_start();
include_once('dbcon.php');
if ($connect) {
    if (isset($_POST['upload'])) {
        $w_id=$_SESSION['Work_ID'];
        $seller_ID=$_SESSION['id'];
        $letter = $_POST['letter'];
        $Price = $_POST['Price'];
        $Date = $_POST['time'];
        $input = "INSERT INTO proposal(work_id,seller_id,letter,Price,`date`)	
                VALUES($w_id,$seller_ID,'$letter',$Price,'$Date')";
        echo var_dump($input);
        $result = mysqli_query($connect, $input);
        echo $result;
        if ($result) {
            echo "added";
            //header('location:product_table.php');
        } else {
            echo '<script>alert("Please enter your information once again.")</script>';
        }
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
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="../css/proposal.css">
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
    <div class="container signup bg-transparent font-weight-bold" style="margin: 15vh auto; background-color: white; color: #142850;">
        <form method="post" action="" enctype="multipart/form-data">
            <div class="form-group">
                <label for="inputName">Cover Letter</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="letter"></textarea>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputPrice">Amount</label>
                    <input type="text" class="form-control" id="inputPrice" name="Price">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputNumber">Approximate time</label>
                    <select class="form-control" id="exampleFormControlSelect1" name="time">
                        <option>3 days</option>
                        <option>7 days</option>
                        <option>15 days</option>
                        <option>1 month</option>
                        <option>More than 1 month</option>
                    </select>
                </div>
            </div>

            <button type="submit" class="btn mt-2" style="background-color:#142850; color: white;" name="upload">Upload</button>
        </form>
    </div>

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