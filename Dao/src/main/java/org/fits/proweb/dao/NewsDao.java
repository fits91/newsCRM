/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.fits.proweb.beans.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author fits-dev
 */
@Repository
public class NewsDao {

    @Autowired
    private JdbcTemplate template;

    class NewsMapper implements RowMapper<News> {

        @Override
        public News mapRow(ResultSet rs, int i) throws SQLException {
            News news = new News();
            news.setNewsID(rs.getInt("newsID"));
            news.setUserLogin(rs.getString("userLogin"));
            news.setTitle(rs.getString("title"));
            news.setBody(rs.getString("body"));
            news.setDataCreate(rs.getString("dataCreate"));

            return news;
        }

    }

    /**
     *
     * @param newsID
     * @return news by newsID from database
     */
    public News getNews(int newsID) {
        return template.queryForObject("SELECT * FROM News "
                + "WHERE newsID = ?", new NewsMapper(), newsID);
    }

    /**
     * @param title
     * @return news by title from database
     */
    public News getNews(String title) {
        return template.queryForObject("SELECT * FROM News "
                + "WHERE title = ?", new NewsMapper(), title);
    }

    /**
     * add news to database
     *
     * @param news
     */
    public void addNews(News news) {
        template.update("call addNews(?, ?, ?, ?)", news.getTitle(), news.getBody(), news.getDataCreate(),
                news.getUserLogin());
    }

    /**
     * update news in database
     *
     * @param news
     */
    public void updateNews(News news) {
        template.update("UPDATE News SET userLogin = ?, title = ?, body = ?, dataCreate = ? "
                + "WHERE newsID = ?", news.getUserLogin(), news.getTitle(), news.getBody(), news.getDataCreate(), news.getNewsID());
    }

    /**
     * remove news from database
     *
     * @param newsID
     */
    public void delNews(int newsID) {
        template.update("DELETE FROM News "
                + "WHERE newsID = ?", newsID);
    }

    /**
     *
     * @return all news from database
     */
    public List<News> getAllNews() {
        return template.query("SELECT * FROM News", new NewsMapper());
    }

}
