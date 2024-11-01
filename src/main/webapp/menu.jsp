<%--
  Created by IntelliJ IDEA.
  User: anacl
  Date: 30/10/2024
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="data.Banco" %>
<%@ page import="java.util.Objects" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Menu Page</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-to-r from-purple-50 to-purple-200 flex items-center justify-center min-h-screen">
    <%
      String userName = request.getParameter("userName");
      String password = request.getParameter("password");

      Banco b = new Banco();
      String dbLogin = b.getLogin(userName);
      if(dbLogin.equals(password)){
        String  fullName = b.getUsuario(userName);
      %>
    <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full text-center">
        <h1 class="text-3xl font-bold text-gray-800 mb-4">Bem-vindo, <%= fullName %>!</h1>
        <div class="mt-4">
            <ul class="list-none">
                <li class="mb-2">
                    <a href="cadastrar.jsp" class="block bg-purple-600 text-white py-2 px-4 rounded-lg hover:bg-purple-500 transition duration-150 ease-in-out">Cadastrar Livro</a>
                </li>
                <li class="mb-2">
                    <a href="consultar.jsp" class="block bg-purple-600 text-white py-2 px-4 rounded-lg hover:bg-purple-500 transition duration-150 ease-in-out">Consultar Livro</a>
                </li>
                <li class="mb-2">
                    <a href="atualizar.jsp" class="block bg-purple-600 text-white py-2 px-4 rounded-lg hover:bg-purple-500 transition duration-150 ease-in-out">Atualizar Livro</a>
                </li>
                <li class="mb-2">
                    <a href="deletar.jsp" class="block bg-purple-600 text-white py-2 px-4 rounded-lg hover:bg-purple-500 transition duration-150 ease-in-out">Deletar Livro</a>
                </li>
            </ul>
        </div>
    </div>
    <%
    }else{
      out.print("<h1>Usuário ou senha incorreto</h1>");
      out.print("<h1><a href='index.jsp'>Voltar</a></h1>");
    }
    %>

</body>
</html>
