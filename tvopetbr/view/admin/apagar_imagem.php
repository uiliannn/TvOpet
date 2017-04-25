<?php
include_once('../../conexao.php');
$id = $_GET['id'];

$result_imagem = "DELETE FROM arquivo WHERE codigo = '$id'";
$resultado_imagem = mysqli_query($conn, $result_imagem);
?>

    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="utf-8">
    </head>

    <body> <?php
    if(mysqli_affected_rows($conn) != 0){
        echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=img_ativa.php'>
				<script type=\"text/javascript\">
					alert(\"Imagem apagada com Sucesso.\");
				</script>
			";
    }else{
        echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=img_ativa.php'>
				<script type=\"text/javascript\">
					alert(\"não foi possivel  apagar com Sucesso.\");
				</script>
			";
    }?>
    </body>
    </html>
<?php $conn->close(); ?>