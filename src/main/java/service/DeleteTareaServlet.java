package service;

import dao.TareaDAO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteTareaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isAdmin = "true".equals(request.getParameter("admin"));
        if(!isAdmin) {
            response.getWriter().println("Acceso denegado. Solo admin puede eliminar tareas.");
            return;
        }
        int idTarea = Integer.parseInt(request.getParameter("idTarea"));
        TareaDAO tareaDAO = new TareaDAO();
        tareaDAO.deleteTarea(idTarea);
        int idProyecto = Integer.parseInt(request.getParameter("idProyecto"));
        response.sendRedirect("ListTareasServlet?idProyecto=" + idProyecto);
    }
}
