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
    <title>Atualizar Livro</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-to-r from-purple-50 to-purple-200 flex items-center justify-center min-h-screen">
<%
    String tituloOld = request.getParameter("tituloOld");
    String newTitulo = request.getParameter("newTitulo");
    String autor = request.getParameter("autor");
    String edicao = request.getParameter("edicao");
    String editora = request.getParameter("editora");
    String ano = request.getParameter("ano");
    String codigo = request.getParameter("codigo");
    String exemplares = request.getParameter("exemplares");

    if(tituloOld == null){
%>

<div class="bg-white shadow-lg rounded-lg p-8 max-w-lg w-full">
    <h2 class="text-3xl font-bold text-center text-gray-800 mb-6">Atualizar Livro</h2>

    <form action="atualizar.jsp" method="POST">
        <div class="mb-4">
            <label for="tituloOld" class="block text-sm font-medium text-gray-700">Título Antigo</label>
            <input id="tituloOld" name="tituloOld" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o título antigo" required>
        </div>
        <div class="mb-4">
            <label for="newTitulo" class="block text-sm font-medium text-gray-700">Novo Título</label>
            <input id="newTitulo" name="newTitulo" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o novo título" required>
        </div>
        <div class="mb-4">
            <label for="autor" class="block text-sm font-medium text-gray-700">Autor</label>
            <input id="autor" name="autor" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o autor" required>
        </div>
        <div class="mb-4">
            <label for="edicao" class="block text-sm font-medium text-gray-700">Edição</label>
            <input id="edicao" name="edicao" type="number" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite a edição" required>
        </div>
        <div class="mb-4">
            <label for="editora" class="block text-sm font-medium text-gray-700">Editora</label>
            <input id="editora" name="editora" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite a editora" required>
        </div>
        <div class="mb-4">
            <label for="ano" class="block text-sm font-medium text-gray-700">Ano</label>
            <input id="ano" name="ano" type="number" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o ano" required>
        </div>
        <div class="mb-4">
            <label for="codigo" class="block text-sm font-medium text-gray-700">Código</label>
            <input id="codigo" name="codigo" type="text" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite o código" required>
        </div>
        <div class="mb-4">
            <label for="exemplares" class="block text-sm font-medium text-gray-700">Exemplares</label>
            <input id="exemplares" name="exemplares" type="number" class="mt-1 block w-full p-3 border border-gray-300 rounded-lg focus:ring focus:ring-purple-500 focus:outline-none transition duration-150 ease-in-out" placeholder="Digite a quantidade de exemplares" required>
        </div>
        <button type="submit" class="w-full bg-purple-600 text-white font-semibold py-3 rounded-lg hover:bg-purple-500 focus:outline-none focus:ring focus:ring-purple-300 transition duration-150 ease-in-out">Enviar</button>
    </form>
</div>

<%
}else{
    Banco b = new Banco();

    b.atualizarLivro(tituloOld, newTitulo, autor, Integer.parseInt(edicao), editora, Integer.parseInt(ano), codigo, Integer.parseInt(exemplares));

%>
<h3 class="text-center text-danger">Livro atualizado com sucesso!</h3>
<%
    }
%>


</body>
</html>
