/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.controller;

import java.util.List;
import java.util.Map;
import org.fits.proweb.beans.News;
import org.fits.proweb.beans.User;
import org.fits.proweb.business.NewsComponent;
import org.fits.proweb.business.UserComponent;
import org.fits.proweb.business.UserRoleComponent;
import org.fits.proweb.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author fits-dev
 */
@Controller
public class AdminController {

    @Autowired
    private UserComponent uc; // create bean UserComponent
    @Autowired
    private UserRoleComponent urc; // create bean UserRoleComponent
    @Autowired
    private NewsComponent nc; // create bean NewsComponent

    /**
     * 
     * @return admin model
     */
    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView("admin");
        //users
        List<User> userList = uc.getAllUsers(); // get all users to list
        model.addObject("users", userList); // add bean to model
        //news
        List<News> list = nc.getAllNews(); // get all news to list
        model.addObject("news", list); //add bean to model
        //roles
        Map<String, String> roleMap = urc.mapLoginRole(); // mapping userLogin, role 
        model.addObject("rolemap", roleMap);

        return model;

    }

    /**
     * 
     * @return moderator model 
     */
    @RequestMapping(value = "/moderator**", method = RequestMethod.GET)
    public ModelAndView moderPage() {

        ModelAndView model = new ModelAndView("moderator"); 
        //news
        List<News> list = nc.getAllNews(); // get all news to list
        model.addObject("news", list); //add bean to model

        return model;

    }

    /**
     * add user to resource 
     * @param login
     * @param pass
     * @param role
     * @return user model
     */
    @RequestMapping(value = "/admin/adduser", method = RequestMethod.GET)
    public ModelAndView addUser(@RequestParam String login, @RequestParam String pass, @RequestParam String role) {
        uc.addUser(new User(login, Service.md5Apache(pass), 1), role); // add new user to resource 
        ModelAndView model = userModel(); // create user model
        return model;
    }

    /**
     * remove user from resource 
     * @param login
     * @return user model
     */
    @RequestMapping(value = "/admin/deluser", method = RequestMethod.GET)
    public ModelAndView delUser(@RequestParam String login) {
        uc.delUser(login); // remove user from resource 
        ModelAndView model = userModel(); // create user model
        return model;
    }

    /**
     * get edit user
     * @param login
     * @return edit user modal 
     */
    @RequestMapping(value = "/admin/emuser", method = RequestMethod.GET)
    public ModelAndView editModal(@RequestParam String login) {
        User user = uc.getUser(login);
        ModelAndView mav = new ModelAndView("modal/editUser");
        mav.addObject("user", user);
        return mav;
    }

    /**
     * edit user and role 
     * @param login
     * @param role
     * @param avail
     * @return user model
     */
    @RequestMapping(value = "/admin/useredit", method = RequestMethod.GET)
    public ModelAndView userEdit(@RequestParam String login, @RequestParam String role, @RequestParam int avail) {
        uc.updateUser(new User(login, role, avail)); // update user 
        urc.updateUserRole(login, role); // update user role 
        ModelAndView model = userModel();
        return model;
    }

    /**
     * add news to resource 
     * @param title
     * @param body
     * @param date
     * @param login
     * @return news model
     */
    @RequestMapping(value = "/moder/addnews", method = RequestMethod.GET)
    public ModelAndView addNews(@RequestParam String title, @RequestParam String body, @RequestParam String date, @RequestParam String login) {
        nc.addNews(new News(0, login, title, body, date)); // dd news to resource 
        ModelAndView model = newsModel(); // create news model
        return model;
    }

    /**
     * remove news from resource 
     * @param idNews
     * @return news model
     */
    @RequestMapping(value = "/moder/deletenews", method = RequestMethod.GET)
    public ModelAndView delNews(@RequestParam int idNews) {
        nc.delNews(idNews); // remove news 
        ModelAndView model = newsModel(); // create news model
        return model;
    }

    /**
     * get edit news 
     * @param idNews
     * @return edit modal news
     */
    @RequestMapping(value = "/moder/menews", method = RequestMethod.GET)
    public ModelAndView editModalNews(@RequestParam int idNews) {
        News news = nc.getNews(idNews); // get news
        ModelAndView modal = new ModelAndView("modal/editNews"); 
        modal.addObject("news", news); // add bean to modal 
        return modal;
    }

    /**
     * edit news in resource 
     * @param idNews
     * @param newsTitle
     * @param newsBody
     * @param login
     * @param newsDate
     * @return news model
     */
    @RequestMapping(value = "/moder/newsedit", method = RequestMethod.GET)
    public ModelAndView editNews(@RequestParam int idNews, @RequestParam String newsTitle, @RequestParam String newsBody, @RequestParam String login, @RequestParam String newsDate) {
        nc.updateNews(new News(idNews, login, newsTitle, newsBody, newsDate)); // edit news in resource 
        ModelAndView model = newsModel();
        return model;
    }

    /**
     * create users model 
     * @return users model 
     */
    private ModelAndView userModel() {
        ModelAndView model = new ModelAndView("mapping/users");
        //users
        List<User> userList = uc.getAllUsers(); // get all users to list
        model.addObject("users", userList); // add list to model
        //roles
        Map<String, String> roleMap = urc.mapLoginRole(); // mapping userLogin, role
        model.addObject("rolemap", roleMap); // add roleMap to model
        return model;
    }

    /**
     * create mews model 
     * @return news model 
     */
    private ModelAndView newsModel() {
        ModelAndView model = new ModelAndView("mapping/news");
        List<News> list = nc.getAllNews(); // get all news to list
        model.addObject("news", list); // add news to model
        return model;
    }
}
