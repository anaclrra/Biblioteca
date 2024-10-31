<%--
  Created by IntelliJ IDEA.
  User: anacl
  Date: 30/10/2024
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="resources.Banco" %>
<%@ page import="java.util.Objects" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Menu Page</title>
</head>
<body>
  <%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");

    Banco b = new Banco();

    if(b.getLogin(userName, password) && !Objects.equals(userName, "") || !Objects.equals(password, "")){
      String fullName = b.getUsuario(userName);

      out.print("<h1>" + fullName + "</h1><br/>");
      out.print("<h1>Cadastrar Livro</h1>");
      out.print("<h1>Consultar Livro</h1>");
      out.print("<h1>Atualizar Livro</h1>");
      out.print("<h1>Deletar Livro</h1>");
    }else{
      out.print("<h1>Usuário ou senha incorreto</h1>");
      out.print("<h1><a href='index.jsp'>Voltar</a></h1>");
    }
  %>
</body>
</html>
