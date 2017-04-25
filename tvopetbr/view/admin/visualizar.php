<?php
setlocale(LC_ALL,'pt_BR.UTF8');
mb_internal_encoding('UTF8');
mb_regex_encoding('UTF8');

/**
 * Created by PhpStorm.
 * User: Lourenço
 * Date: 27/10/2016
 * Time: 00:09
 */
session_start();
include_once('../../conexao.php');
$id = $_GET['id'];
//Buscar os dados referente ao usuario situado neste id
$result_recados = "SELECT * FROM recados WHERE id = '$id' LIMIT 1";
$resultado_recados = mysqli_query($conn, $result_recados);
$row_recados = mysqli_fetch_assoc($resultado_recados);
?>
<!doctype html>

<head>
    <meta content="text/html; charset=utf-8">
    <link rel="icon" type="image/png" href="../../assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Sistema de Avisos Opet</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>


    <!-- Bootstrap core CSS     -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Animation library for notifications   -->
    <link href="../../assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="../../assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../../assets/css/demo.css" rel="stylesheet"/>


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../../assets/css/pe-icon-7-stroke.css" rel="stylesheet"/>

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

        <!--

            Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
            Tip 2: you can also add an image using data-image tag

        -->

        <div class="sidebar-wrapper">
            <div class="logo">
                <a  class="simple-text">
                    <?php
                    $trans = get_html_translation_table(HTML_ENTITIES);
                    $str = "Olá ". $_SESSION['login'];
                    $encoded = strtr($str, $trans);
                    echo $encoded;

                    ?>
                </a>
            </div>

            <ul class="nav">
                <li >
                    <a href="painel.php">
                        <i class="pe-7s-next-2"></i>

                        <p>Novo Aviso</p>
                    </a>
                </li>
                <li class="active">
                    <a href="ativos.php">
                        <i class="pe-7s-note2"></i>

                        <p>Avisos Ativos</p>
                    </a>
                </li>
                <li>
                    <a href="upload.php">
                        <i class="pe-7s-photo"></i>

                        <p>Upload de imagens</p>
                    </a>
                </li>
                <li>
                    <a href="img_ativa.php">
                        <i class="pe-7s-photo"></i>

                        <p>Imagens Ativas</p>
                    </a>
                </li>
                <li  >
                    <a href="add_user.php">
                        <i class="pe-7s-photo"></i>

                        <p>Adicionar Usuarios</p>
                    </a>
                </li>
                <li >
                    <a href="configuracoes.php">
                        <i class="pe-7s-photo"></i>

                        <p>Alterar Dados</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Avisos Ativos</a>
                </div>
                <div class="collapse navbar-collapse">


                    <ul class="nav navbar-nav navbar-right">


                        <li>
                            <a href="../../sair.php">
                                <i class="pe-7s-power"></i>
                                Sair
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">



                </div>


                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="pull-right" style="padding-bottom: 20px; ">
                                <a href="ativos.php">
                                    <button type='button' class='btn btn-sm btn-success'>Listar</button>
                                </a>

                                <a href="editar.php?id=<?php echo $row_recados['id']; ?>">
                                    <button type="button" class="btn btn-sm btn-warning">
                                        Editar
                                    </button>
                                </a>

                                <a href="apagar_recado.php?id=<?php echo $row_recados['id']; ?>">
                                    <button type="button" class="btn btn-sm btn-danger">
                                        Apagar
                                    </button>
                                </a>
                            </div>
                        </div>
                        <dl class="dl-horizontal">
                            <dt>Id: </dt>
                            <dd><?php echo $row_recados['id']; ?></dd>
                            <dt>Nome: </dt>
                            <dd><?php echo $row_recados['nome']; ?></dd>
                            <dt>E-mail: </dt>
                            <dd><?php echo $row_recados['email']; ?></dd>
                            <dt>Recado: </dt>
                            <dd><?php echo $row_recados['recado']; ?></dd>
                            <dt>Inserido: </dt>
                            <dd><?php  echo $row_recados['created']?>
                            </dd>
                        </dl>

                    </div>


                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">

                <p class="copyright pull-right">
                    &copy; 2016 <a href="#">Uilian</a>, Robótica Opet
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

<!--   Core JS Files   -->
<script src="../../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="../../assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="../../assets/js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script src="../../assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="../../assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="../../assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="../../assets/js/demo.js"></script>

<!--<script type="text/javascript">
    $(document).ready(function () {

        demo.initChartist();

        $.notify({
            icon: 'pe-7s-gift',
            message: "Welcome to <b>Light Bootstrap Dashboard</b> - a beautiful freebie for every web developer."

        }, {
            type: 'info',
            timer: 4000
        });

    });
</script>-->

</html>

