/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.business;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.fits.proweb.beans.User;
import org.fits.proweb.dao.UserDao;
import org.fits.proweb.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author fits-dev
 */
@Component
public class UserComponent implements UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private UserRoleComponent userRoleDao;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public User getUser(String userLogin) {
        return userDao.getUser(userLogin);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void addUser(User user, String role) {
        userDao.addUser(user, role);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void delUser(String userLogin) {
        userRoleDao.delUserRole(userLogin);
        userDao.delUser(userLogin);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

}
