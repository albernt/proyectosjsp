package service;

import dao.ProyectoDAO;
import entities.Proyecto;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class NewProyectoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("newProyecto.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Proyecto proyecto = new Proyecto();
            proyecto.setNombreProyecto(request.getParameter("nombre_proyecto"));
            proyecto.setDescripcion(request.getParameter("descripcion"));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date fechaInicio = sdf.parse(request.getParameter("fecha_inicio"));
            Date fechaFin = sdf.parse(request.getParameter("fecha_fin"));
            proyecto.setFechaInicio(fechaInicio);
            proyecto.setFechaFin(fechaFin);
            proyecto.setEstado(request.getParameter("estado"));
            ProyectoDAO proyectoDAO = new ProyectoDAO();
            proyectoDAO.saveProyecto(proyecto);
            response.sendRedirect("ListProyectosServlet");
        } catch(Exception e) {
            throw new ServletException(e);
        }
    }
}
