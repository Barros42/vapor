<?php 
# Servidor do Banco
$hostname = "localhost";
# Usuário do Banco
$username = "root";
# Senha do Banco
$password = "";
# Nome do Banco de Dados
$database = "vapor";
# Porta do Banco de Dados
$port = 3306;
# Objeto de conexão
$conn = mysqli_connect($hostname, $username, $password, $database, $port);
?>