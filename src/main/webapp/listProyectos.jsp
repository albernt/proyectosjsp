<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Lista de Proyectos</title>
</head>
<body>
<h2>Lista de Proyectos</h2>
<form method="get" action="ListProyectosServlet">
Filtrar por estado:
<select name="estado">
<option value="">Todos</option>
<option value="en curso">En Curso</option>
<option value="completado">Completado</option>
</select>
<input type="submit" value="Filtrar">
</form>
<a href="NewProyectoServlet">Registrar Nuevo Proyecto</a>
<table border="1">
<tr>
<th>ID</th>
<th>Nombre</th>
<th>Descripción</th>
<th>Fecha Inicio</th>
<th>Fecha Fin</th>
<th>Estado</th>
<th>Acciones</th>
</tr>
<%
    java.util.List<entities.Proyecto> proyectos = (java.util.List<entities.Proyecto>) request.getAttribute("proyectos");
    if(proyectos != null) {
        for(entities.Proyecto proyecto : proyectos) {
%>
<tr>
<td><%=proyecto.getId()%></td>
<td><%=proyecto.getNombreProyecto()%></td>
<td><%=proyecto.getDescripcion()%></td>
<td><%=proyecto.getFechaInicio()%></td>
<td><%=proyecto.getFechaFin()%></td>
<td><%=proyecto.getEstado()%></td>
<td>
<a href="ListTareasServlet?idProyecto=<%=proyecto.getId()%>">Ver Tareas</a>
<a href="DeleteProyectoServlet?idProyecto=<%=proyecto.getId()%>&admin=true">Eliminar</a>
</td>
</tr>
<%
        }
    }
%>
</table>
</body>
</html>
