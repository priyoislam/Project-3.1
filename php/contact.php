<?php 
session_start();
include 'feedback_config.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="../css/contact.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Flamenco&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<?php include("navbar.php");?>
<body class="new">

  
   
    <header class="start">
        <!-- <nav>
            <div class="row clearfix">
                <div class="left">
                    <h4 class="change1">Online Library</h4>
                </div>
                <div class="right">
                    <ul class="main-nav animate__animated animate_slideInDown">
                        <li><a href="../index.html">HOME</a></li>
                        <li><a href="about.html">ABOUT US</a></li>
                        <li><a href="services.html">SERVICES</a></li>
                        <li><a href="../php/book.php">BOOKS</a></li>
                        <li><a href="../php/feedback.php">FEEDBACK</a></li>
                        <li><a href="contact.html">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </nav> -->
     
    
        <div class="main">
            <div class="contact-form">
                <form action="javascript:sendmail()" method="post">
                    <h2>Contact Us</h2>

                    <p class="para">
                        <label>First Name:</label>
                        <input name="visitor_name" type="text" size="30" id="Name" pattern=[A-Z\sa-z]{3,20} required>
                    </p>
                    <p>
                        <label>Email Address:</label>
                        <input name="visitor_email" type="email" id="Sender" size="30">
                    </p>
                    <p>
                        <label>Subject:</label>
                        <input name="Subject" type="text" id="Subject" size="30">
                    </p>
                    <p>
                        <label>Message:</label>
                        <textarea id="Message" name="visitor_message" rows="6" cols="80" required></textarea>
                    </p>
                    <button name="btn-send" type="submit" class="btn btn-success">Send</button>

                </form>
            </div>
        </div>
    </header>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="https://smtpjs.com/v3/smtp.js"></script>

    <script>
        function sendmail() {

            var name = $('#Name').val();
            var email = $('#Sender').val();
            var subject = $('#Subject').val();
            var message = $('#Message').val();

            // var body = $('#body').val();

            var Body = 'Name: ' + name + '<br>Email: ' + email + '<br>Subject: ' + subject + '<br>Message: ' + message;
            //console.log(name, phone, email, message);

            Email.send({
                Host: "smtp.gmail.com",
                Username: 'sbinteshahid@gmail.com',
                Password: "rwrfogmgerwyhhtn",
                To: 'sbinteshahid@gmail.com',
                // To: 'me.sahal2000@gmail.com',
                From: "demo@gmail.com",
                Subject: "New message on contact from " + name,
                Body: Body
            }).then(
                message => {
                    //console.log (message);
                    if (message == 'OK') {
                        alert('Your mail has been send. Thank you for connecting.');
                    } else {
                        console.error(message);
                        alert('There is error at sending message. ')

                    }

                }
            );
        }
    </script>
  </header>
  <?php include("footer.php");?>    
</body>

</html>