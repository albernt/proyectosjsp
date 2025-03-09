<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Nuevo Proyecto</title>
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
