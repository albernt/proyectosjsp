package service;

import dao.ProyectoDAO;
import dao.TareaDAO;
import entities.Proyecto;
import entities.Tarea;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class NewTareaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idProyecto = Integer.parseInt(request.getParameter("idProyecto"));
        ProyectoDAO proyectoDAO = new ProyectoDAO();
        Proyecto proyecto = proyectoDAO.getProyectoById(idProyecto);
        request.setAttribute("proyecto", proyecto);
        request.getRequestDispatcher("newTarea.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int idProyecto = Integer.parseInt(request.getParameter("idProyecto"));
            ProyectoDAO proyectoDAO = new ProyectoDAO();
            Proyecto proyecto = proyectoDAO.getProyectoById(idProyecto);
            Tarea tarea = new Tarea();
            tarea.setProyecto(proyecto);
            tarea.setDescripcionTarea(request.getParameter("descripcion_tarea"));
            tarea.setResponsable(request.getParameter("responsable"));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date fechaInicio = sdf.parse(request.getParameter("fecha_inicio"));
            Date fechaFin = sdf.parse(request.getParameter("fecha_fin"));
            tarea.setFechaInicio(fechaInicio);
            tarea.setFechaFin(fechaFin);
            tarea.setEstado(request.getParameter("estado"));
            TareaDAO tareaDAO = new TareaDAO();
            tareaDAO.saveTarea(tarea);
            response.sendRedirect("ListTareasServlet?idProyecto=" + idProyecto);
        } catch(Exception e) {
            throw new ServletException(e);
        }
    }
}
