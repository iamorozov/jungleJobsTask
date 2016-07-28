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
    public List<News> listNews(String fromDate, String toDate) {

        Session session = this.sessionFactory.openSession();
        List<News> newsfeed = session.createQuery(
                        "from News news where news.date >= "
                        + "\'" + fromDate + "\'" + " and news.date <= "
                        + "\'" + toDate + "\'").list();
        session.close();
        return newsfeed;
    }
}
