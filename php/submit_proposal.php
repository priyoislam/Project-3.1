<?php
session_start();
include_once('dbcon.php');
if ($connect) {
    if (isset($_POST['upload'])) {
        $w_id = $_SESSION['Work_ID'];
        $seller_ID = $_SESSION['id'];
        $letter = $_POST['letter'];
        $cv = $_FILES['cv']['name'];
        $target = '../user_image/' . $cv;
        $paper = $_POST['paper'];
        $input = "INSERT INTO proposal(work_id,seller_id,letter,Paper,cv,flag)	
                VALUES($w_id,$seller_ID,'$letter','$paper','$cv',0)";
        $result = mysqli_query($connect, $input);
        if ($result) {
            move_uploaded_file($_FILES['cv']['tmp_name'], $target);
            header('location:invitations.php');
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
    <div class="container">
        <div class="mt-4 text-center">
            <a href="proposal.php" class="btn btn-rounded btn-dark">Close <i class="fa fa-window-close" aria-hidden="true"></i></a>
        </div>
    </div>
    <div class="container signup bg-transparent font-weight-bold" style="margin: 10vh auto; background-color: white; color: #142850;">
            <form method="post" action="" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="inputName">Idea about project</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="letter"></textarea>
                </div>
                <label for="custome-file">Upload your CV</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="customFile" name="cv">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
                <br>
                <br>
                <div class="form-row">
                    <div class="form-group">
                        <label for="paper">Add your paper link:</label>
                        <input type="url" id="paper" name="paper"><br>
                    </div>
                </div>
                <!-- <div class="form-row">
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
            </div> -->

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
    <script>
        $(".custom-file-input").on("change", function() {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>
    <script src="../js/main.js"></script>
</body>

</html>