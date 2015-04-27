/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.services;

import java.util.List;
import org.fits.proweb.beans.User;

/**
 *
 * @author fits-dev
 */
public interface UserService {

    /**
     * @param userLogin
     * @return user by userLogin
     */
    User getUser(String userLogin);

    /**
     * add User to resource
     *
     * @param user
     * @param role
     */
    void addUser(User user, String role);

    /**
     * remove user from resource
     *
     * @param userLogin
     */
    void delUser(String userLogin);

    /**
     * update user in resource
     *
     * @param user
     */
    void updateUser(User user);

    /**
     *
     * @return all users
     */
    List<User> getAllUsers();
}
