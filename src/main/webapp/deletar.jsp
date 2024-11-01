<%@ page import="data.Banco" %><%--
  Created by IntelliJ IDEA.
  User: anacl
  Date: 31/10/2024
  Time: 09:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deletar Livro</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-to-r from-blue-50 to-blue-200 flex items-center justify-center min-h-screen">
    <%
        String titulo = request.getParameter("titulo");
        if(titulo == null){
    %>
    <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
        <h2 class="text-3xl font-bold text-center text-gray-800 mb-6">Deletar Livro</h2>

        <form action="deletar.jsp" method="POST">
            <div class="mb-4">
                <label for="titulo" class="block text-sm font-medium text-gray-700">Título</label>
                <input type="text" name="titulo" id="titulo" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-blue-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o título do livro a ser deletado" required>
            </div>
            <button type="submit" class="w-full bg-red-600 text-white font-semibold py-3 rounded-lg hover:bg-red-500 focus:outline-none focus:ring focus:ring-red-300 transition duration-150 ease-in-out">Deletar</button>
        </form>
    </div>

    <%
        }else{
            Banco b = new Banco();
            b.deletarLivro(titulo);
    %>
    <h3 class="text-center text-danger">Livro deletado com sucesso</h3>
    <%
        }
    %>


</body>
</html>
