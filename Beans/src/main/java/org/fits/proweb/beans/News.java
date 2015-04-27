/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.beans;

import java.util.Objects;

/**
 *
 * @author fits-dev
 */
public class News {

    private int newsID;
    private String userLogin;
    private String title;
    private String body;
    private String dataCreate;

    public News(int newsID, String userLogin, String title, String body, String dataCreate) {
        this.newsID = newsID;
        this.userLogin = userLogin;
        this.title = title;
        this.body = body;
        this.dataCreate = dataCreate;
    }

    public News() {
    }

    public int getNewsID() {
        return newsID;
    }

    public void setNewsID(int newsID) {
        this.newsID = newsID;
    }

    public String getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getDataCreate() {
        return dataCreate;
    }

    public void setDataCreate(String dataCreate) {
        this.dataCreate = dataCreate;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 41 * hash + this.newsID;
        hash = 41 * hash + Objects.hashCode(this.userLogin);
        hash = 41 * hash + Objects.hashCode(this.title);
        hash = 41 * hash + Objects.hashCode(this.body);
        hash = 41 * hash + Objects.hashCode(this.dataCreate);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final News other = (News) obj;
        if (this.newsID != other.newsID) {
            return false;
        }
        if (this.userLogin != other.userLogin) {
            return false;
        }
        if (!Objects.equals(this.title, other.title)) {
            return false;
        }
        if (!Objects.equals(this.body, other.body)) {
            return false;
        }
        if (!Objects.equals(this.dataCreate, other.dataCreate)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "News{" + "newsID=" + newsID + ", userLogin=" + userLogin + ", title=" + title + ", body=" + body + ", dataCreate=" + dataCreate + '}';
    }
    
    
}
