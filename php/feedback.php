<?php 

include 'feedback_config.php';

error_reporting(0); // For not showing any error

if (isset($_POST['submit'])) { // Check press or not Post Comment Button
	$name = $_POST['name']; // Get Name from form
	$email = $_POST['email']; // Get Email from form
	$comment = $_POST['comment']; // Get Comment from form

	$sql = "INSERT INTO comments (name, email, comment)
			VALUES ('$name', '$email', '$comment')";
	$result = mysqli_query($conn, $sql);
	if ($result) {
		echo "<script>alert('Comment added successfully.')</script>";
	} else {
		echo "<script>alert('Comment does not add.')</script>";
	}
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">

	<link rel="stylesheet" type="text/css" href="../css/feedback.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
  
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Flamenco&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<body>
<header>
	

<div class="container-fluid" id="navs">
        <div class="row">
            <div class="top-nav d-flex justify-content-center">
                <div class="cs_img">
                    <img class="logo" src="../image/logo">
                </div>

                <div class="topright d-flex down">
                    <?php if (isset($_SESSION['is_login'])) { ?>
                    <div class="logbtn">
                        <a href="user_profile.php"><button type="button"
                                class="btn btn-lg"><?php echo $_SESSION['name']; ?></button></a>
                    </div>
                    <div class="logbtn">
                        <?php
                            if (isset($_POST['logout'])) {
                                session_destroy();
                                header('location:home.php');
                            }
                            ?>
                        <form method="post" action="" enctype="multipart/form-data">
                            <button type="submit" class="btn btn-lg " name="logout">Log out</button>
                        </form>
                    </div>
                    <?php } else { ?>
                    <div class="logbtn">
                        <a href="login.php"><button type="button " class="btn btn-lg ">Log In</button></a>
                    </div>
                    <div class="logbtn">
                        <a href="signup.php"><button type="button " class="btn btn-lg ">Sign Up</button></a>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="low-nav d-flex  justify-content-center">
                <div>
                    <nav class="navbar  navbar-expand-lg  navbar-dark d-flex justify-content-center ">

                        <!-- Toggler/collapsibe Button -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <ul class="navbar-nav  nav-tabs hello">
                                <li class="nav-item ">
                                    <a class="nav-link" href="home.php">Home </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.php">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="blog.php">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="tribute.php">Tributes</a>
                                </li>
								<li class="nav-item">
                                    <a class="nav-link" href="feedback.php">Feedback</a>
                                </li>
								<li class="nav-item">
                                    <a class="nav-link" href="invitations.php">Invitations</a>
                                </li>
								<?php if (isset($_SESSION['is_login'])) { ?>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="invitations.php">Invitations</a>
                                </li>
                                <?php } ?>

                                <li class="nav-item">
                                    <a class="nav-link" href="contact.php">Contact</a>
                                </li>
                            </ul>

                        </div>

                    </nav>
                </div>
            </div>
        </div>

      
    </div>

		<div class="wrapper">
			<form action="" method="POST" class="form">
				<div class="row">
					<div class="input-group">
						<label for="name">Name</label>
						<input type="text" name="name" id="name" placeholder="Enter your Name" required>
					</div>
					<div class="input-group">
						<label for="email">Email</label>
						<input type="email" name="email" id="email" placeholder="Enter your Email" required>
					</div>
				</div>
				<div class="input-group textarea">
					<label for="comment">Comment</label>
					<textarea id="comment" name="comment" placeholder="Enter your Comment" required></textarea>
				</div>
				<div class="input-group">
					<button name="submit" class="btn">Post Comment</button>
				</div>
			</form>
	
	
			<div class="prev-comments">
				<?php 
				
				$sql = "SELECT * FROM comments";
				$result = mysqli_query($conn, $sql);
				if (mysqli_num_rows($result) > 0) {
					while ($row = mysqli_fetch_assoc($result)) {
	
				?>
				<div class="single-item">
					<div class="row">
						<div class="col-6">
							<h4><?php echo $row['name']; ?></h4>
						</div>
						<div class="col-6">
							<a href="mailto:<?php echo $row['email']; ?>"><?php echo $row['email']; ?></a>
						</div>

					</div>
						<p><?php echo $row['comment']; ?></p>

				</div>
				<?php
	
					}
				}
				
				?>
			</div>
	
		</div>
    </header>
	<?php include("footer.php");?>   
</body>
</html>