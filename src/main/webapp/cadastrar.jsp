<%@ page import="data.Banco" %><%--
  Created by IntelliJ IDEA.
  User: anacl
  Date: 31/10/2024
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cadastrar Livro</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-to-r from-green-50 to-green-200 flex items-center justify-center min-h-screen">
    <%
        String id = request.getParameter("id");
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String edicao = request.getParameter("edicao");
        String editora = request.getParameter("editora");
        String ano = request.getParameter("ano");
        String codigo = request.getParameter("codigo");
        String exemplares = request.getParameter("exemplares");

        if(id == null){
    %>

    <div class="bg-white shadow-lg rounded-lg p-8 max-w-lg w-full">
        <h2 class="text-3xl font-bold text-center text-gray-800 mb-6">Cadastrar Livro</h2>

        <form action="cadastrar.jsp" method="POST">
            <div class="mb-4">
                <label for="id" class="block text-sm font-medium text-gray-700">ID</label>
                <input id="id" name="id" type="number" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o ID" required>
            </div>
            <div class="mb-4">
                <label for="titulo" class="block text-sm font-medium text-gray-700">Título</label>
                <input id="titulo" name="titulo" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o título" required>
            </div>
            <div class="mb-4">
                <label for="autor" class="block text-sm font-medium text-gray-700">Autor</label>
                <input id="autor" name="autor" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o autor" required>
            </div>
            <div class="mb-4">
                <label for="edicao" class="block text-sm font-medium text-gray-700">Edição</label>
                <input id="edicao" name="edicao" type="number" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite a edição" required>
            </div>
            <div class="mb-4">
                <label for="editora" class="block text-sm font-medium text-gray-700">Editora</label>
                <input id="editora" name="editora" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite a editora" required>
            </div>
            <div class="mb-4">
                <label for="ano" class="block text-sm font-medium text-gray-700">Ano</label>
                <input id="ano" name="ano" type="number" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o ano" required>
            </div>
            <div class="mb-4">
                <label for="codigo" class="block text-sm font-medium text-gray-700">Código</label>
                <input id="codigo" name="codigo" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o código" required>
            </div>
            <div class="mb-4">
                <label for="exemplares" class="block text-sm font-medium text-gray-700">Exemplares</label>
                <input id="exemplares" name="exemplares" type="number" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-green-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite a quantidade de exemplares" required>
            </div>
            <button type="submit" class="w-full bg-green-600 text-white font-semibold py-3 rounded-lg hover:bg-green-500 focus:outline-none focus:ring focus:ring-green-300 transition duration-150 ease-in-out">Enviar</button>
        </form>
    </div>

    <%
        }else{
            Banco b = new Banco();

            b.cadastrarLivro(Integer.parseInt(id), titulo, autor, Integer.parseInt(edicao), editora, Integer.parseInt(ano), codigo, Integer.parseInt(exemplares));

    %>
    <h3 class="text-center text-success">Livro cadastrado com sucesso!</h3>
    <%
        }
    %>


</body>
</html>
