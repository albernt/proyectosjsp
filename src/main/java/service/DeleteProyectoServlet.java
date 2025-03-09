package service;

import dao.ProyectoDAO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteProyectoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isAdmin = "true".equals(request.getParameter("admin"));
        if(!isAdmin) {
            response.getWriter().println("Acceso denegado. Solo admin puede eliminar proyectos.");
            return;
        }
        int idProyecto = Integer.parseInt(request.getParameter("idProyecto"));
        ProyectoDAO proyectoDAO = new ProyectoDAO();
        proyectoDAO.deleteProyecto(idProyecto);
        response.sendRedirect("ListProyectosServlet");
    }
}
