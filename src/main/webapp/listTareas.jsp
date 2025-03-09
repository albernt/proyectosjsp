<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Lista de Tareas</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 20px;
            background-color: #f5f6fa;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        h2 {
            color: #2c3e50;
            border-bottom: 3px solid #3498db;
            padding-bottom: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ecf0f1;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:hover {
            background-color: #f8f9fa;
        }
        .btn {
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            transition: all 0.3s;
        }
        .btn-primary {
            background-color: #3498db;
            color: white;
        }
        .btn-danger {
            background-color: #e74c3c;
            color: white;
        }
        .btn-primary:hover {
            background-color: #2980b9;
        }
        .btn-danger:hover {
            background-color: #c0392b;
        }
        .add-task {
            display: inline-block;
            margin: 15px 0;
            padding: 10px 20px;
            background-color: #2ecc71;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            entities.Proyecto proyecto = (entities.Proyecto) request.getAttribute("proyecto");
        %>
        <h2>Tareas del Proyecto: <%=proyecto.getNombreProyecto()%></h2>
        <a href="NewTareaServlet?idProyecto=<%=proyecto.getId()%>" class="add-task">➕ Nueva Tarea</a>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Descripción</th>
                    <th>Responsable</th>
                    <th>Fecha Inicio</th>
                    <th>Fecha Fin</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    java.util.List<entities.Tarea> tareas = (java.util.List<entities.Tarea>) request.getAttribute("tareas");
                    if (tareas != null) {
                        for (entities.Tarea tarea : tareas) {
                %>
                <tr>
                    <td><%=tarea.getId()%></td>
                    <td><%=tarea.getDescripcionTarea()%></td>
                    <td><%=tarea.getResponsable()%></td>
                    <td><%=tarea.getFechaInicio()%></td>
                    <td><%=tarea.getFechaFin()%></td>
                    <td><%=tarea.getEstado()%></td>
                    <td>
                        <a href="DeleteTareaServlet?idTarea=<%=tarea.getId()%>&idProyecto=<%=proyecto.getId()%>&admin=true" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
        
        <a href="ListProyectosServlet" class="back-link">← Volver a Proyectos</a>
    </div>
</body>
</html>