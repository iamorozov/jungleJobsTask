package newsfeed;

import dao.NewsDao;
import model.News;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * A controller to handle HTTP requests
 */
@RestController
public class NewsController {

    @RequestMapping("/newsfeed")
    public List<News> newsFeed() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");

        NewsDao dao = context.getBean(NewsDao.class);

        List<News> newsfeed = dao.listNews();

        context.close();

        return newsfeed;
    }
}
