<?php
include('dbcon.php');
if($connect){
    $art = "SELECT * from (scientist inner join publish using(Scientist_ID)) inner join publication using(Pub_ID) group by pub_id";
    $res = mysqli_query($connect, $art);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/searchbyauthor.css?v=<?php echo time(); ?>">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap"
        rel="stylesheet">
</head>

<body>


    <div class="container" style="margin-top: 20px;margin-bottom:20px; ">

        <div class="container-fluid" id="searchtopic2">
            <div class="row ">
                <div class="card ">

                    <input type="text" id="myInput2" onkeyup="myFunction2()" placeholder="   Search for Author..">

                    <div class="table-wrapper-scroll-y my-custom-scrollbar">
                        <table id="myTable2">

                            <tr class="header">
                                <th style="width:60%;">Papers</th>
                                <th style="width:40%;">Authors</th>
                            </tr>
                            <?php
                while ($row = mysqli_fetch_assoc($res)) :
                ?>
                            <tr>
                                <td><a href="<?php echo $row['Pub_Link'];?>"><?php echo $row['Pub_Name'];?></a><br></td>
                                <td>
                                    <?php 
                                if($connect){
                                    $pubid=$row['Pub_ID'];
                                    $sql2 = "SELECT * from (scientist inner join publish using(Scientist_ID)) inner join publication using(Pub_ID) where Pub_ID=$pubid";
                                    $result2 = mysqli_query($connect, $sql2);
                                }
                                while ($row2 = mysqli_fetch_assoc($result2)) :     
                            ?>
                                    <?php echo $row2['Sci_Name'];?>.
                                    <?php endwhile; ?>
                                </td>
                            </tr>
                            <?php endwhile ?>
                            <?php
                    }
                    ?>
                        </table>

                    </div>


                </div>
            </div>
        </div>

    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>






    <script>
    function myFunction2() {
        // Declare variables
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput2");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable2");
        tr = table.getElementsByTagName("tr");

        // Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
    </script>




</body>

</html>