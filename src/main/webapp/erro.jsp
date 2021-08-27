<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela que mostra os erros</title>
</head>
<body>
<h1>Mensagem de Erro, entre em contato com a equipe de suporte do sistema.</h1>

<p>Erro: <%out.print(request.getAttribute("msg_error"));%></p>

</body>
</html>