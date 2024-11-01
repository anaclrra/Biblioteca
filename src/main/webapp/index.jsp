<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>

    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-to-r from-purple-50 to-purple-200 flex justify-center items-center min-h-screen">
    <%--<center>--%>
    <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
        <h3 class="text-2xl font-semibold text-center text-gray-800 mb-6">Login</h3>
        <form action="menu.jsp" method="POST">
            <div class="mb-4">
                <label for="userName" class="block text-gray-700 mb-2">Login</label>
                <input type="text" class="form-control border border-gray-300 rounded-lg p-2 w-full focus:outline-none focus:ring-2 focus:ring-purple-500" name="userName" id="userName" placeholder="Digite seu login" required>
            </div>
            <div class="mb-4">
                <label for="password" class="block text-gray-700 mb-2">Senha</label>
                <input type="password" class="form-control border border-gray-300 rounded-lg p-2 w-full focus:outline-none focus:ring-2 focus:ring-purple-500" name="password" id="password" placeholder="Digite sua senha" required>
            </div>
            <button type="submit" class="w-full bg-purple-600 text-white py-2 rounded-lg hover:bg-purple-500 transition duration-150 ease-in-out">Enviar</button>
        </form>
    </div>


</body>
</html>
