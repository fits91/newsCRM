/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.services;

import java.util.List;
import org.fits.proweb.beans.UserRole;

/**
 *
 * @author fits-dev
 */
public interface UserRoleService {

    /**
     *
     * @param roleID
     * @return bean UserRole by roleID
     */
    UserRole getUserRole(int roleID);

    /**
     *
     * @param userLogin
     * @return bean UserRole by userLogin
     */
    UserRole getUserRole(String userLogin);

    /**
     * update UserRole in resource
     *
     * @param userLogin
     * @param roleName
     */
    void updateUserRole(String userLogin, String roleName);

    /**
     * add UserRole to resource
     *
     * @param userLogin
     * @param roleName
     */
    void addUserRole(String userLogin, String roleName);

    /**
     * remove UserRole from resource
     *
     * @param userLogin
     */
    void delUserRole(String userLogin);

    /**
     * @return all UserRoles
     */
    List<UserRole> getAllUserRoles();
}
