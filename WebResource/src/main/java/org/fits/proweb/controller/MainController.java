package org.fits.proweb.controller;

import java.util.List;
import org.fits.proweb.beans.News;
import org.fits.proweb.business.NewsComponent;
import org.fits.proweb.business.UserComponent;
import org.fits.proweb.business.UserRoleComponent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    private UserComponent uc;
    @Autowired
    private UserRoleComponent urc;
    @Autowired
    private NewsComponent nc;

    /**
     *
     * @return redirect model
     */
    @RequestMapping(value = {"/redirect**"}, method = RequestMethod.GET)
    public ModelAndView defaultAdminPage() {

        ModelAndView model = new ModelAndView();
        model.setViewName("redirect");
        return model;

    }

    /**
     *
     * @return main modal for user
     */
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public ModelAndView defaultPage() {
        ModelAndView model = new ModelAndView("index");
        List<News> list = nc.getAllNews(); // get all news to list
        model.addObject("news", list); // add list to model
        return model;

    }

    /**
     * create model to user
     *
     * @param newsID
     * @return mews model for user
     */
    @RequestMapping(value = {"/news/{newsID}"}, method = RequestMethod.GET)
    public ModelAndView newsPage(@PathVariable int newsID) {
        ModelAndView model = new ModelAndView("newsBean");
        News news = nc.getNews(newsID); // get news from resource
        model.addObject("news", news);
        return model;

    }

    /**
     *
     * @param error
     * @param logout
     * @return login model
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("login");

        return model;

    }

    /**
     * @return 403 access denied model
     */
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {

        ModelAndView model = new ModelAndView();

        //check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            System.out.println(userDetail);

            model.addObject("username", userDetail.getUsername());

        }
        model.setViewName("errors/403");
        return model;

    }

}
