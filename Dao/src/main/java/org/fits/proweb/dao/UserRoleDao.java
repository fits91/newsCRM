/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.fits.proweb.beans.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author fits-dev
 */
@Repository
public class UserRoleDao {

    @Autowired
    private JdbcTemplate template;

    class UserRoleMapper implements RowMapper<UserRole> {

        @Override
        public UserRole mapRow(ResultSet rs, int i) throws SQLException {
            UserRole role = new UserRole();
            role.setRoleID(rs.getInt("user_role_id"));
            role.setUserName(rs.getString("username"));
            role.setRoleName(rs.getString("role"));
            return role;
        }

    }

    /**
     *
     * @param role
     * @return UserRole by roleID
     */
    public UserRole getUserRole(int role) {
        return template.queryForObject("SELECT * FROM user_roles "
                + "WHERE role = ?", new UserRoleMapper(), role);
    }

    /**
     * @param userLogin
     * @return UserRole by userLogin
     */
    public UserRole getUserRole(String userLogin) {
        return template.queryForObject("SELECT * FROM user_roles "
                + "WHERE username = ?", new UserRoleMapper(), userLogin);
    }

    /**
     * add user role to database
     *
     * @param userLogin
     * @param role
     */
    public void addUserRole(String userLogin, String role) {
        template.update("call addUserRole(?, ?)", userLogin, role);
    }

    /**
     * remove UserRole by userLogin from database
     *
     * @param userLogin
     */
    public void delUserRole(String userLogin) {
        template.update("DELETE FROM user_roles "
                + "WHERE username = ?", userLogin);
    }

    /**
     *
     * @return all UserRoles
     */
    public List<UserRole> getAllUserRoles() {
        return template.query("SELECT * FROM user_roles", new UserRoleMapper());
    }

    /**
     * update userRole in database
     *
     * @param userLogin
     * @param roleName
     */
    public void updateUserRole(String userLogin, String roleName) {
        template.update("UPDATE user_roles SET role = ? "
                + "WHERE username = ?", roleName, userLogin);
    }

    /**
     *
     * @return userRole by userName
     */
    public Map<String, String> mapLoginRole() {
        Map<String, String> map = new HashMap<>();
        List<UserRole> list = getAllUserRoles();
        for (UserRole role : list) {
            map.put(role.getUserName(), role.getRoleName());
        }
        return map;
    }

}
