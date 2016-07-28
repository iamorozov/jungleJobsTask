package dao;

import model.News;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class NewsDaoImpl implements NewsDao {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addNews(News news) {
        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(news);
        transaction.commit();
        session.close();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<News> listNews() {

        Session session = this.sessionFactory.openSession();
        List<News> newsfeed = session.createQuery("from News").list();
        session.close();
        return newsfeed;

//        Session session = this.sessionFactory.getCurrentSession();
//        return session.createQuery("from news").list();
    }
}
