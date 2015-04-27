/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.business;

import java.util.List;
import org.fits.proweb.beans.News;
import org.fits.proweb.dao.NewsDao;
import org.fits.proweb.services.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author fits-dev
 */
@Component
public class NewsComponent implements NewsService {

    @Autowired
    NewsDao newsDao;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public News getNews(int newsID) {
        return newsDao.getNews(newsID);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public News getNews(String title) {
        return newsDao.getNews(title);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void addNews(News news) {
        newsDao.addNews(news);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void delNews(int newsID) {
        newsDao.delNews(newsID);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void updateNews(News news) {
        newsDao.updateNews(news);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public List<News> getAllNews() {
        return newsDao.getAllNews();
    }


}
