<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
    Document   : EditUser
    Created on : 16.04.2015, 12:36:40
    Author     : fits-dev
--%>

<!-- modal editUser -->
<form id="editUserForm" editUserLogin="${user.login}" action="admin/useredit.htm">
    <div class="modal fade" id="editUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Edit user</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="display: block">
                        <label for="usr">Login:</label>
                        <input type="text" disabled value="${user.login}" class="form-control" id="login_edit" required="">
                    </div>
                    <div class="form-group" style="display: block">
                        <label for="pwd">Available:</label>
                        <select id="avail_edit"  class="form-control">
                            <option value="1" selected>Yes</option>
                            <option value="0">No</option>
                        </select>
                    </div>
                    <div class="form-group" style="display: block">
                        <label for="pwd">Role:</label>
                        <select id="role_edit"  class="form-control">
                            <option value="ROLE_USER" selected>User</option>
                            <option value="ROLE_MODERATOR">Moderator</option>
                            <option value="ROLE_ADMIN">Admin</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    <button onclick="editUser('${user.login}')" class="btn btn-success">Save</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!-- modal editUser -->
