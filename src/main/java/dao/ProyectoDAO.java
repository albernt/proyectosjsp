package dao;

import entities.Proyecto;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class ProyectoDAO {
    public void saveProyecto(Proyecto proyecto) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            session.save(proyecto);
            transaction.commit();
        } catch(Exception e) {
            if(transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    public List<Proyecto> getProyectosByEstado(String estado) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            return session.createQuery("from Proyecto where estado = :estado", Proyecto.class)
                .setParameter("estado", estado)
                .list();
        }
    }
    public List<Proyecto> getAllProyectos() {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            return session.createQuery("from Proyecto", Proyecto.class).list();
        }
    }
    public void deleteProyecto(int id) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            Proyecto proyecto = session.get(Proyecto.class, id);
            if(proyecto != null){
                session.delete(proyecto);
            }
            transaction.commit();
        } catch(Exception e) {
            if(transaction != null) transaction.rollback();
            e.printStackTrace();
        }
    }
    public Proyecto getProyectoById(int id) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            return session.get(Proyecto.class, id);
        }
    }
}
