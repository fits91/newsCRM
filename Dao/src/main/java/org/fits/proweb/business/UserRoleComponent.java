/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.business;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.fits.proweb.beans.UserRole;
import org.fits.proweb.dao.UserRoleDao;
import org.fits.proweb.services.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author fits-dev
 */
@Component
public class UserRoleComponent implements UserRoleService {

    @Autowired
    UserRoleDao userRoleDao;

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public UserRole getUserRole(int roleID) {
        return userRoleDao.getUserRole(roleID);
    }

    @Override
    public UserRole getUserRole(String userLogin) {
        return userRoleDao.getUserRole(userLogin);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void addUserRole(String userLogin, String roleName) {
        userRoleDao.addUserRole(userLogin, roleName);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void delUserRole(String userLogin) {
        userRoleDao.delUserRole(userLogin);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public List<UserRole> getAllUserRoles() {
        return userRoleDao.getAllUserRoles();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void updateUserRole(String userLogin, String roleName) {
        userRoleDao.updateUserRole(userLogin, roleName);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public Map<String, String> mapLoginRole() {
        return userRoleDao.mapLoginRole();
    }

}
