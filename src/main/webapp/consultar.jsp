<%@ page import="data.Banco" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Livro" %><%--
  Created by IntelliJ IDEA.
  User: anacl
  Date: 31/10/2024
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Consultar Livro</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-to-r from-blue-50 to-blue-200 flex items-center justify-center min-h-screen">
<div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
    <h2 class="text-3xl font-bold text-center text-gray-800 mb-6">Consultar Livro</h2>

    <form action="consultar.jsp" method="POST">
        <div class="mb-4">
            <label for="titulo" class="block text-sm font-medium text-gray-700">Título</label>
            <input type="text" id="titulo" name="titulo" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-blue-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o título do livro" required>
        </div>
        <button type="submit" class="w-full bg-blue-600 text-white font-semibold py-3 rounded-lg hover:bg-blue-500 focus:outline-none focus:ring focus:ring-blue-300 transition duration-150 ease-in-out">Consultar</button>
    </form>

    <%
        String titulo = request.getParameter("titulo");
        if (titulo != null) {
            Banco b = new Banco();
            ArrayList<Livro> livros = b.getLivrosByTitulo(titulo);

            if (livros.isEmpty()){

    %>
    <h3 class="text-center text-red-600 mt-4">Não foi encontrado um livro com esse título</h3>
    <%
        }else{
    %>
    <ul class="mt-4">
        <%
            for (Livro l : livros){
        %>
        <li class="bg-gray-100 border border-gray-300 p-4 rounded-lg mb-2">
            <strong>Título:</strong> <%= l.getTitulo() %> <br>
            <strong>Autor:</strong> <%= l.getAutor() %> <br>
            <strong>Exemplares:</strong> <%= l.getExemplares() %>
        </li>
        <%
            }
        %>
    </ul>
    <%
            }
        }
    %>

</body>
</html>
