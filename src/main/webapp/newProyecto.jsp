<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Nuevo Proyecto</title>
<style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 20px;
            background-color: #f5f6fa;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h2 {
            color: #2c3e50;
            border-bottom: 3px solid #3498db;
            padding-bottom: 10px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #34495e;
            font-weight: 500;
        }
        input, select {
            width: 100%;
            padding: 8px;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<h2>Registrar Nuevo Proyecto</h2>
<form method="post" action="NewProyectoServlet">
<label>Nombre del Proyecto:</label><input type="text" name="nombre_proyecto" required><br>
<label>Descripción:</label><input type="text" name="descripcion" required><br>
<label>Fecha Inicio:</label><input type="date" name="fecha_inicio" required><br>
<label>Fecha Fin:</label><input type="date" name="fecha_fin" required><br>
<label>Estado:</label>
<select name="estado" required>
<option value="en curso">En Curso</option>
<option value="completado">Completado</option>
</select><br>
<input type="submit" value="Registrar">
</form>
</body>
</html>
