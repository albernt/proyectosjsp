package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.HibernateException;

public class HibernateUtil {
    private static final SessionFactory sessionFactory;
    static {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (HibernateException he) {
            throw new ExceptionInInitializerError(he);
        }
    }
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
