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


    <title>Informações</title>


</head>
<body>

<div class="container-fluid">
    <header class="row">

    </header>
    <div class="row">
        <div class="col-lg-10">


            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->


                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="arquivo_site/opet.png">
                    </div>


                    <?php
                    $tag = "<div class='item'><img class='img-responsive' width='1000' src='";
                    $tag2 = "'></div>'";
                    $result_imagens_bd = "SELECT * FROM arquivo";
                    $resultado_imagens_bd = mysqli_query($conn, $result_imagens_bd);
                    if (mysqli_num_rows($resultado_imagens_bd) <= 0) {
                        echo "nenhuma imagem";
                    } else {

                        while ($rows = mysqli_fetch_assoc($resultado_imagens_bd)) {
                            ?>



                            <?= $tag . $rows['arquivo'] . $tag2 ?>


                            <?php
                        }

                    }
                    ?>


                    <!-- Left and right controls -->
                    <a href="#myCarousel" role="button" data-slide="prev">

                    </a>
                    <a href="#myCarousel" role="button" data-slide="next">

                    </a>
                </div>


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