<?php
session_start();
include_once('conexao.php');
include_once('slideshow.php');
?>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br" xml:lang="pt-br">

    <meta http-equiv="refresh" content="600">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link href="css/bootstrap.min.css" rel="stylesheet">


    <title>Informa??es</title>


</head>
<body>

<div class="container-fluid">
    <header class="">

    </header>
    <div class="row">

        <div class="col-md-9 col-sm-12">

            <div class="navbar" style="bottom: inherit">
                <?php
                $result_recado_bd = "SELECT * FROM recados";
                $resultado_recado_bd = mysqli_query($conn, $result_recado_bd);
                if (mysqli_num_rows($resultado_recado_bd) <= 0) {
                    echo "Nenhum recado...";
                } else {
                    echo "<marquee   class=?li? direction=right?><h1>";
                    while ($rows = mysqli_fetch_assoc($resultado_recado_bd)) {
                        ?>



                        <?= $rows['nome'] ?>:
                        <?= $rows['recado'] ?>


                        <?php
                    }
                    echo "</h1></marquee>";
                }
                ?>

            </div>



        </div>

    </div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.orbit-1.2.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#featured').orbit();
        });
    </script>

</body>
</html>