<?php
include_once('conexao.php');
// session_start inicia a sess�o
session_start();
// as vari�veis login e senha recebem os dados digitados na p�gina anterior
$login = $_POST['login'];
$senha = $_POST['senha'];

// as pr�ximas 3 linhas s�o respons�veis em se conectar com o bando de dados.

$result_user_bd = "SELECT * FROM `usuarios` WHERE `email` = '$login' AND `senha`= '$senha'";
$result_user_id = "SELECT niveis_acesso_id FROM `usuarios` WHERE `email` = '$login' AND `senha`= '$senha'";
$resultado_user = mysqli_query($conn, $result_user_id);
$id = mysqli_fetch_assoc($resultado_user);
foreach ($id as $stringArray) {
    $stringArrayF = $stringArrayF . $stringArray;
}


// A variavel $result pega as varias $login e $senha, faz uma pesquisa na tabela de usuarios
$result = mysqli_query($conn, $result_user_bd);
/* Logo abaixo temos um bloco com if e else, verificando se a vari�vel $result foi bem sucedida, ou seja se ela estiver encontrado algum registro id�ntico o seu valor ser� igual a 1, se n�o, se n�o tiver registros seu valor ser� 0. Dependendo do resultado ele redirecionar� para a pagina site.php ou retornara  para a pagina do formul�rio inicial para que se possa tentar novamente realizar o login */
if (mysqli_num_rows($result) > 0) {
    switch ($stringArrayF) {
        case 0:
            $_SESSION['login'] = $login;
            $_SESSION['senha'] = $senha;
            header('location:view/user/painel_user.php');

            break;
        case 1:
            $_SESSION['login'] = $login;
            $_SESSION['senha'] = $senha;
            header('location:view/admin/painel.php');

            break;
        default:
            $_SESSION['login'] = $login;
            $_SESSION['senha'] = $senha;
            header('location:view/user/painel_user.php');

    }


} else {
    unset ($_SESSION['login']);
    unset ($_SESSION['senha']);
    header('location:index.php');
    echo $login . $senha . $id;

}

?>