<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gestión de Proyectos y Tareas</title>
    <!-- Estilos personalizados -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        p {
            color: #666;
            font-size: 1.2em;
            margin-bottom: 30px;
        }
        .btn {
            display: inline-block;
            padding: 15px 30px;
            font-size: 1em;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            margin: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .btn-proyectos {
            background-color: #28a745;
        }
        .btn-proyectos:hover {
            background-color: #218838;
        }
        .btn-tareas {
            background-color: #dc3545;
        }
        .btn-tareas:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>¡Bienvenido!</h1>
        <p>Gestiona tus proyectos y tareas de manera eficiente.</p>
        
        <!-- Botón para ir a la gestión de proyectos -->
        <a href="ListProyectosServlet" class="btn btn-proyectos">Gestionar Proyectos</a>
        
       
    </div>
</body>

</html>