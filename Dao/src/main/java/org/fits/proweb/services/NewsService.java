/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.services;

import java.util.List;
import org.fits.proweb.beans.News;

/**
 *
 * @author fits-dev
 */
public interface NewsService {

    /**
     * @param newsID
     * @return bean News by newsID
     */
    News getNews(int newsID);

    /**
     * @param title
     * @return bean News by title
     */
    News getNews(String title);

    /**
     * add news to resource
     * @param news 
     */
    void addNews(News news);

    /**
     * remove news by newsID
     * @param newsID
     */
    void delNews(int newsID);

    /**
     * update news by bean news
     * @param news 
     */
    void updateNews(News news);

    /**
     * 
     * @return all news in resource 
     */
    List<News> getAllNews();

}
