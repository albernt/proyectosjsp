<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Lista de Tareas</title>
</head>
<body>
<%
    entities.Proyecto proyecto = (entities.Proyecto) request.getAttribute("proyecto");
%>
<h2>Tareas del Proyecto: <%=proyecto.getNombreProyecto()%></h2>
<a href="NewTareaServlet?idProyecto=<%=proyecto.getId()%>">Agregar Nueva Tarea</a>
<table border="1">
<tr>
<th>ID</th>
<th>Descripción</th>
<th>Responsable</th>
<th>Fecha Inicio</th>
<th>Fecha Fin</th>
<th>Estado</th>
<th>Acciones</th>
</tr>
<%
    java.util.List<entities.Tarea> tareas = (java.util.List<entities.Tarea>) request.getAttribute("tareas");
    if(tareas != null) {
        for(entities.Tarea tarea : tareas) {
%>
<tr>
<td><%=tarea.getId()%></td>
<td><%=tarea.getDescripcionTarea()%></td>
<td><%=tarea.getResponsable()%></td>
<td><%=tarea.getFechaInicio()%></td>
<td><%=tarea.getFechaFin()%></td>
<td><%=tarea.getEstado()%></td>
<td>
<a href="DeleteTareaServlet?idTarea=<%=tarea.getId()%>&idProyecto=<%=proyecto.getId()%>&admin=true">Eliminar</a>
</td>
</tr>
<%
        }
    }
%>
</table>
<a href="ListProyectosServlet">Volver a Proyectos</a>
</body>
</html>
