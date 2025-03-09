<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Nueva Tarea</title>
</head>
<body>
<%
    entities.Proyecto proyecto = (entities.Proyecto) request.getAttribute("proyecto");
%>
<h2>Agregar Nueva Tarea al Proyecto: <%=proyecto.getNombreProyecto()%></h2>
<form method="post" action="NewTareaServlet">
<input type="hidden" name="idProyecto" value="<%=proyecto.getId()%>">
<label>Descripción de la Tarea:</label><input type="text" name="descripcion_tarea" required><br>
<label>Responsable:</label><input type="text" name="responsable" required><br>
<label>Fecha Inicio:</label><input type="date" name="fecha_inicio" required><br>
<label>Fecha Fin:</label><input type="date" name="fecha_fin" required><br>
<label>Estado:</label>
<select name="estado" required>
<option value="pendiente">Pendiente</option>
<option value="en progreso">En Progreso</option>
<option value="completada">Completada</option>
</select><br>
<input type="submit" value="Agregar Tarea">
</form>
</body>
</html>
