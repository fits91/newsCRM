<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
    Document   : addUser
    Created on : 14.04.2015, 17:18:44
    Author     : fits-dev
--%>
<!-- modal addUser -->
<form id="addUserForm" action="admin/adduser.htm">
    <div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add user</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="display: block">
                        <label for="usr">Login:</label>
                        <input type="text" class="form-control" id="login_add" required="">
                    </div>
                    <div class="form-group" style="display: block">
                        <label for="usr">Password:</label>
                        <input type="password"  class="form-control" id="pwd_add" required="">
                    </div>
                    <div class="form-group" style="display: block">
                        <label for="pwd">Role:</label>
                        <select id="role_add"  class="form-control">
                            <option value="ROLE_USER" selected>User</option>
                            <option value="ROLE_MODERATOR">Moderator</option>
                            <option value="ROLE_ADMIN">Admin</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-success">Save</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!-- modal addUser -->
