<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Gestión de Proyectos y Tareas</title>
        
        <style>
            body {
                font-family: 'Arial', sans-serif;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background: linear-gradient(135deg, #2575fc, #6a8fff);
                color: white;
            }
            .container {
                text-align: center;
                background-color: rgba(255, 255, 255, 0.9); 
                padding: 40px;
                border-radius: 15px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
                max-width: 600px;
                width: 100%;
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
                border-radius: 8px;
                text-decoration: none;
                margin: 10px;
                cursor: pointer;
                transition: all 0.3s ease;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
            .btn:hover {
                transform: translateY(-2px); 
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
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
            .logo {
                width: 100px;
                margin-bottom: 20px;
            }
            .footer {
                margin-top: 30px;
                font-size: 0.9em;
                color: #666;
            }
        </style>
    </head>
    <body>
        <div class="container">


            <h1>¡Bienvenido!</h1>
            <p>Gestiona tus proyectos y tareas de manera eficiente.</p>

            
            <a href="ListProyectosServlet" class="btn btn-proyectos">Gestionar Proyectos</a>

            
            <div class="footer">
                <p>&copy; JSP+Hibernate. 2025 Alberto Bernet</p>
            </div>
        </div>
    </body>
</html>