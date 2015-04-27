<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
    Document   : users
    Created on : 15.04.2015, 10:08:08
    Author     : fits-dev
--%>
<h4>Users</h4>
<div class="bs-example">
    <table id="user_table" class="table table-bordered">
        <thead>
            <tr>
                <th>Login</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.login}</td>
                    <td>${rolemap.get(user.login)}</td>
                    <td>
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" onclick="editUserModal('${user.login}')" class="btn btn-default btn-xs">Edit</button>
                            <button type="button" onclick="delUserModal('${user.login}')" class="btn btn-danger btn-xs">Delete</button>
                        </div>	
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
