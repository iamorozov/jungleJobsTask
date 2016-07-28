package newsfeed;

import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import model.News;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * A class for loading news into database using meduza.io API
 */
public class NewsAdder {

    private Response requestMedusaNews() throws IOException {
        OkHttpClient client = new OkHttpClient();

        Request request = new Request.Builder()
                .url("https://meduza.io/api/v3/search?chrono=shapito&page=0&per_page=10&locale=ru")
                .get()
                .addHeader("cache-control", "no-cache")
                .addHeader("postman-token", "52029f71-02e3-237d-aafd-eae9fc35b4bb")
                .build();

        return client.newCall(request).execute();
    }

    private JSONObject getArticlesJSON() throws IOException {
        Response response = requestMedusaNews();
        return new JSONObject(response.body().string());
    }

    public List<News> getNewsFromJson() throws IOException {
        String URL = "meduza.io/";
        JSONObject articles = getArticlesJSON();
        JSONObject documents = articles.getJSONObject("documents");
        JSONArray titles = articles.getJSONArray("collection");
        ArrayList<News> newsfeed = new ArrayList<News>();

        for (int i = 0; i < titles.length(); i++) {
            JSONObject article = documents.getJSONObject(titles.getString(i));
            News news = new News();
            news.setTitle(article.getString("title"));
            news.setContent(URL + article.getString("url"));
            news.setDate(article.getString("pub_date"));
            newsfeed.add(news);
        }

        return newsfeed;
    }
}
