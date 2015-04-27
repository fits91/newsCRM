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
public class UserRole {

    private int roleID;
    private String userName;
    private String roleName;

    public UserRole(int roleID, String userName, String roleName) {
        this.roleID = roleID;
        this.userName = userName;
        this.roleName = roleName;
    }

    public UserRole() {
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 89 * hash + this.roleID;
        hash = 89 * hash + Objects.hashCode(this.userName);
        hash = 89 * hash + Objects.hashCode(this.roleName);
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
        final UserRole other = (UserRole) obj;
        if (this.roleID != other.roleID) {
            return false;
        }
        if (!Objects.equals(this.userName, other.userName)) {
            return false;
        }
        if (!Objects.equals(this.roleName, other.roleName)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "UserRole{" + "roleID=" + roleID + ", userName=" + userName + ", roleName=" + roleName + '}';
    }
    
    

    

    
    
    
    
    

}
