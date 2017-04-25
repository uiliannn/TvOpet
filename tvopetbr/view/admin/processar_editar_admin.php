<?php
include_once("conexao.php");
$id = mysqli_real_escape_string($conn, $_POST['id']);
$nome = mysqli_real_escape_string($conn, $_POST['nome']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$senha = mysqli_real_escape_string($conn, $_POST['senha']);
$situacao = mysqli_real_escape_string($conn, $_POST['situacoe_id']);
$nivel = mysqli_real_escape_string($conn, $_POST['niveis_acesso_id']);
$created = mysqli_real_escape_string($conn, $_POST['created']);
$mod = mysqli_real_escape_string($conn, date('Y-m-d H:i:s'));

$result_recados = "UPDATE usuarios SET nome='$nome', email='$email',senha='$senha', situacoe_id='$situacao', niveis_acesso_id='$nivel', modified='$mod' WHERE id = '$id'";

$resultado_recados = mysqli_query($conn, $result_recados);
?>
    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="utf-8">
    </head>

    <body> <?php
    if(mysqli_affected_rows($conn) != 0){
        echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=configuracoes.php'>
				<script type=\"text/javascript\">
					alert(\"Usuario alterado com Sucesso.\");
				</script>
			";
    }else{
        echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=configuracoes.php'>
				<script type=\"text/javascript\">
					alert(\"Usuario não foi alterado com Sucesso.\");
				</script>
			";
    }?>
    </body>
    </html>
<?php $conn->close(); ?>