<?php
include('dbcon.php');
session_start();
if (isset($_SESSION['Sci_ID'])) {
    $sql = "SELECT * from scientist where Scientist_ID='$_SESSION[Sci_ID]'";
    $res = mysqli_query($connect, $sql);
    $row = mysqli_fetch_assoc($res);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/profile.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <script src="https://kit.fontawesome.com/5aa077ca5f.js" crossorigin="anonymous"></script>
</head>

<body>

    <tbody class="first">
        <tr>
            <td>
                <div class="skill-row">
                    <img class="chilli-img" src="../image/<?php echo $row['Sci_img'];?>" alt="chillies-img">

                    <h3 class="john"><?php echo $row['Sci_Name'];?></h3>
                    <?php 
                    if($connect){
                    $sql1 = "SELECT * from (scientist inner join work using(Scientist_ID)) inner join research_area using(Sub_ID) where Scientist_ID= '$_SESSION[Sci_ID]'";
                    $result = mysqli_query($connect, $sql1);
                    }
                    ?>
                    <p class="mcr">
                        <?php 
                            while ($row1 = mysqli_fetch_assoc($result)) :
                        ?>
                        <span><?php echo $row1['Sub_Name'];?>, </span>
                        <?php endwhile; ?>
                    </p>

                </div>
            </td>

        </tr>

        </table>
        <hr class="high">
        <div class="card biograph">

            <div class="card-body ">
                <h2 class="card-title biog"><b>Biography</b></h2>
                <p class="card-text para_1">
                <ul class="demo">
                    <li><b>Birth: </b><?php echo $row['Birth'];?></li>
                    <li><b>Death: </b><?php echo $row['Death'];?></li>
                    <li><b>Education: </b><?php echo $row['Education'];?></li>
                    <li><b>Additional Info: </b><?php echo $row['Add_Info'];?></li>
                    <li><b class="biog">Experience:</b><br>
                        <?php 
                    if($connect){
                    $sql2 = "SELECT * from scientist inner join experience using(Scientist_ID) where Scientist_ID='$_SESSION[Sci_ID]'";
                    $result2 = mysqli_query($connect, $sql2);
                    }
                    ?>
                        <ul>
                            <?php 
                            while ($row2 = mysqli_fetch_assoc($result2)) :
                        ?>
                            <li><?php echo $row2['experience'];?></li>
                            <?php endwhile; ?>
                        </ul>
                </ul>
                </p>

            </div>
        </div>
        <div class="card-group city">
            <div class="card carthy">

                <div class="card-body">
                    <h5 class="card-title"><b class="biog">Articles</b></h5>
                    <p class="card-text para_3">
                        <?php 
                    if($connect){
                    $sql3 = "SELECT * from scientist inner join article using(Scientist_ID) where Scientist_ID='$_SESSION[Sci_ID]'";
                    $result3 = mysqli_query($connect, $sql3);
                    }
                    ?>
                    <ul class="demo" style="list-style-type:circle">
                        <?php 
                            while ($row3 = mysqli_fetch_assoc($result3)) :
                        ?>
                        <a href="<?php echo $row3['Article_Link'];?>"><?php echo $row3['Article_Name'];?></a></li><br><br>

                        <?php endwhile; ?>
                    </ul>
                    </p>

                </div>
            </div>
            <div class="card carthy">

                <div class="card-body">
                    <h5 class="card-title"><b class="biog">Publications</b></h5>
                    <p class="card-text para_3">
                        <?php 
                    if($connect){
                    $sql4 = "SELECT * from (scientist inner join publish using(Scientist_ID)) inner join publication using(Pub_ID) where Scientist_ID='$_SESSION[Sci_ID]'";
                    $result4 = mysqli_query($connect, $sql4);
                    }
                    ?>
                    <ul class="demo">
                        <?php 
                            while ($row4 = mysqli_fetch_assoc($result4)) :
                        ?>
                        <a href="<?php echo $row4['Pub_Link'];?>"><?php echo $row4['Pub_Name'];?></a><br>
                        <span class="fs-.5">Cited by: <?php echo $row4['Citation_Count'];?></span><br>
                        <span class="text-muted">
                            <?php 
                                if($connect){
                                    $pubid=$row4['Pub_ID'];
                                $sql5 = "SELECT * from (scientist inner join publish using(Scientist_ID)) inner join publication using(Pub_ID) where Pub_ID=$pubid";
                                $result5 = mysqli_query($connect, $sql5);
                                }
                                while ($row5 = mysqli_fetch_assoc($result5)) :     
                            ?>
                            <?php echo $row5['Sci_Name'];?>.
                            <?php endwhile; ?>
                        </span><br>
                        <?php endwhile; ?>
                    </ul>
                    </ul>
                    </p>

                </div>
            </div>
        </div>


        <hr class="high">
        <h2 class="titl">Bibliometrics:</h2>
        <table class="table tebb">

            <tbody class="decr">
                <tr class="syntax">

                    <td class="roww-2"><b>Publication Years</b></td>
                    <td></td>
                    <td class="roww-1"><?php echo $row['Pub_Year'];?></td>
                </tr>
                <tr class="syntax">

                    <td class="roww-2"><b>Publication Counts</b></td>
                    <td></td>
                    <td class="roww-1"><?php echo $row['Pub_Count'];?></td>
                </tr>
                <tr class="syntax">

                    <td class="roww-2"><b>Citation Count</b></td>
                    <td></td>
                    <td class="roww-1"><?php echo $row['Cite_Count'];?></td>
                </tr>
                <tr class="syntax">

                    <td class="roww-2"><b>Average Citation Per Article</b></td>
                    <td> </td>
                    <td class="roww-1"><?php echo $row['Avg_Cite_Count'];?></td>
                </tr>


            </tbody>
        </table>
        <hr class="high">
        <h2 class="titl">Awards:</h2>
        <?php 
            if($connect){
            $sql4 = "SELECT * from scientist inner join award using(Scientist_ID) where Scientist_ID='$_SESSION[Sci_ID]'";
            $result4 = mysqli_query($connect, $sql4);
            }
        ?>

        <table class="table tebb">
            <thead>
                <tr class="dec">
                    <th scope="col"></th>
                    <th scope="col" class="dec_2">Year</th>
                    <th scope="col" class="dec_3">Prize</th>
                    <th scope="col" class="dec_4">Category</th>

                </tr>
            </thead>
            <tbody class="decr">
                <?php 
                            while ($row4 = mysqli_fetch_assoc($result4)) :
                        ?>
                <tr class="syntax">
                    <td><i class="fas fa-award fa-2x"></i></td>
                    <td><?php echo $row4['Year'];?></td>
                    <td><?php echo $row4['Prize'];?></td>
                    <td><?php echo $row4['Catagory'];?></td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
        </div>
        <h2 class="titl">Related videos:</h2>
        <div class="card biograph">
            <div class="card-body ">
                        <?php 
                    if($connect){
                    $sql5 = "SELECT * from scientist inner join videos using(Scientist_ID) where Scientist_ID='$_SESSION[Sci_ID]'";
                    $result5 = mysqli_query($connect, $sql5);
                    }
                    ?>
                        <ul>
                            <?php 
                            while ($row5 = mysqli_fetch_assoc($result5)) :
                        ?>
                            <li><a href="<?php echo $row5['video_link'];?>"><?php echo $row5['Videos'];?></a></li><br>
                            <?php endwhile; ?>
                        </ul>
            </div>
        </div>
        <hr class="high">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>

</html>