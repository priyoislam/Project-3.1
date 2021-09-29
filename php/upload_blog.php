<?php
session_start();
include_once('dbcon.php');
if ($connect) {
    if (isset($_SESSION['Author_ID'])) {
        if (isset($_POST['upload'])) {
            $BlogTitle = $_POST['BlogTitle'];
            $BlogTopic = $_POST['BlogTopic'];
            $Year = $_POST['Year'];
            $content = $_POST['content'];
            $A_ID=$_SESSION['Author_ID'];
            $image = time() . '_' . $_FILES['image']['name'];
            $target = '../image/' . $image;
            $sqlFind = "Select * from blog where Title='$BlogTitle'";
            $resultFind = mysqli_query($connect, $sqlFind);
            if (mysqli_num_rows($resultFind) > 0) {
                echo '<script>alert("This Blog is already uploaded.")</script>';
            } else {
                $input = "INSERT INTO Blog(Topic,Date,`Image`,Title,Content,Author_ID) 
                VALUES('$BlogTopic','$Year','$image','$BlogTitle','$content','$A_ID')";
                $result = mysqli_query($connect, $input);
                if ($result) {
                    move_uploaded_file($_FILES['image']['tmp_name'], $target);
                    header('location:blog.php');
                    
                } else {
                    echo '<script>alert("Please enter your information once again.")</script>';
                }
            }
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/upload_blog.css?v=<?php echo time(); ?>">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">

    <!-- Java Script -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
   


</head>

<body>

<?php include("navbar.php");?>

    <div class="container">
    <br>
    <h1 class="text-center"> Write a Blog!</h1>
    <br>
        <div class="blog_post m-4 p-5">
            <form method="post" action="" enctype="multipart/form-data">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputName">Blog Title</label>
                        <input type="text" class="form-control" id="inputTitle" name="BlogTitle">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputName">Topic</label>
                        <input type="text" class="form-control" id="inputTopic" name="BlogTopic">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputYear">Date</label>
                        <input class="form-control" id="inputYear" name="Year" placeholder="YYYY-MM-DD" type="text" />
                    </div>
                </div>
                <label for="custome-file">Upload image for Blog</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="customFile" name="image">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
                <div class="from-row">
                    <div class="mb-3 mt-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Content</label>
                        <textarea class="form-control" name="content" id="exampleFormCoantrolTextarea1" rows="5" col="30" maxlength="10000"></textarea>
                    </div>
                </div>
                <button type="submit" class="btn upload_btn mt-2" name="upload">Upload</button>

                <!-- <a class="btn btn-info" href="customer_query.html" role="button">Log in</a> -->
            </form>
        </div>
    </div>

    <?php include("footer.php");?>
    <script src="../js/jquery-3.5.1.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script>
        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function() {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>
</body>

</html>