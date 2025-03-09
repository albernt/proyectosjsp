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
import java.util.List;

public class ListTareasServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idProyecto = Integer.parseInt(request.getParameter("idProyecto"));
        ProyectoDAO proyectoDAO = new ProyectoDAO();
        Proyecto proyecto = proyectoDAO.getProyectoById(idProyecto);
        TareaDAO tareaDAO = new TareaDAO();
        List<Tarea> tareas = tareaDAO.getTareasByProyecto(proyecto);
        request.setAttribute("tareas", tareas);
        request.setAttribute("proyecto", proyecto);
        request.getRequestDispatcher("listTareas.jsp").forward(request, response);
    }
}
