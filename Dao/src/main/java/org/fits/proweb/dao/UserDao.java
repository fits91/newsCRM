/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.fits.proweb.beans.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author fits-dev
 */
@Repository
public class UserDao {

    @Autowired
    private JdbcTemplate template;

    class UserMapper implements RowMapper<User> {

        @Override
        public User mapRow(ResultSet rs, int i) throws SQLException {
            User user = new User();
            user.setLogin(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEnabled(rs.getInt("enabled"));
            return user;
        }

    }

    /**
     * add user to database
     *
     * @param user
     * @param role
     */
    public void addUser(User user, String role) {
        template.update("call addUser (?, ?, ?)",
                user.getLogin(), user.getPassword(), role);
    }

    /**
     * @param userLogin
     * @return user by userLogin from database
     */
    public User getUser(String userLogin) {
        return template.queryForObject("SELECT * FROM users "
                + "WHERE username = ?", new UserMapper(), userLogin);
    }

    /**
     * remove user from database
     *
     * @param userLogin
     */
    public void delUser(String userLogin) {
        template.update("DELETE FROM users "
                + "WHERE username = ?", userLogin);
    }

    /**
     * update user in database
     *
     * @param user
     */
    public void updateUser(User user) {
        template.update("UPDATE users "
                + "SET enabled = ? "
                + "WHERE username = ?", user.getEnabled(), user.getLogin());
    }

    /**
     * @return all users from database
     */
    public List<User> getAllUsers() {
        return template.query("SELECT * FROM users", new UserMapper());
    }
}
