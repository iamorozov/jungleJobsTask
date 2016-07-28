package dao;

import model.News;

import java.util.List;

public interface NewsDao {
    public void addNews(News news);
    public List<News> listNews();
}
