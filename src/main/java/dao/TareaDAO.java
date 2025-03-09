package dao;

import entities.Tarea;
import entities.Proyecto;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class TareaDAO {
    public void saveTarea(Tarea tarea) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            session.save(tarea);
            transaction.commit();
        } catch(Exception e) {
            if(transaction != null) transaction.rollback();
            e.printStackTrace();
        }
    }
    public List<Tarea> getTareasByProyecto(Proyecto proyecto) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            return session.createQuery("from Tarea where proyecto = :proyecto", Tarea.class)
                .setParameter("proyecto", proyecto)
                .list();
        }
    }
    public void deleteTarea(int id) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            Tarea tarea = session.get(Tarea.class, id);
            if(tarea != null) {
                session.delete(tarea);
            }
            transaction.commit();
        } catch(Exception e) {
            if(transaction != null) transaction.rollback();
            e.printStackTrace();
        }
    }
    public Tarea getTareaById(int id) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            return session.get(Tarea.class, id);
        }
    }
}
