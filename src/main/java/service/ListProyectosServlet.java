package service;

import dao.ProyectoDAO;
import entities.Proyecto;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListProyectosServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String estado = request.getParameter("estado");
        ProyectoDAO proyectoDAO = new ProyectoDAO();
        List<Proyecto> proyectos;
        if(estado != null && !estado.isEmpty()){
            proyectos = proyectoDAO.getProyectosByEstado(estado);
        } else {
            proyectos = proyectoDAO.getAllProyectos();
        }
        request.setAttribute("proyectos", proyectos);
        request.getRequestDispatcher("listProyectos.jsp").forward(request, response);
    }
}
