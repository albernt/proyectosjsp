<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Proyectos</title>
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
        .filters {
            background: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            display: flex;
            gap: 15px;
            align-items: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
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
        .add-project {
            display: inline-block;
            margin: 15px 0;
            padding: 10px 20px;
            background-color: #2ecc71;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Lista de Proyectos</h2>
        
        <div class="filters">
            <form method="get" action="ListProyectosServlet">
                <label>Filtrar por estado:</label>
                <select name="estado" style="padding: 5px; border-radius: 4px;">
                    <option value="">Todos</option>
                    <option value="en curso">En Curso</option>
                    <option value="completado">Completado</option>
                </select>
                <input type="submit" value="Filtrar" class="btn btn-primary">
            </form>
            <a href="NewProyectoServlet" class="add-project">➕ Nuevo Proyecto</a>
        </div>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Fecha Inicio</th>
                    <th>Fecha Fin</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    java.util.List<entities.Proyecto> proyectos = (java.util.List<entities.Proyecto>) request.getAttribute("proyectos");
                    if (proyectos != null) {
                        for (entities.Proyecto proyecto : proyectos) {
                %>
                <tr>
                    <td><%=proyecto.getId()%></td>
                    <td><%=proyecto.getNombreProyecto()%></td>
                    <td><%=proyecto.getDescripcion()%></td>
                    <td><%=proyecto.getFechaInicio()%></td>
                    <td><%=proyecto.getFechaFin()%></td>
                    <td><%=proyecto.getEstado()%></td>
                    <td>
                        <a href="ListTareasServlet?idProyecto=<%=proyecto.getId()%>" class="btn btn-primary">Ver Tareas</a>
                        <a href="DeleteProyectoServlet?idProyecto=<%=proyecto.getId()%>&admin=true" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>