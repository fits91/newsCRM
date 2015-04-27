<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
    Document   : delUser
    Created on : 14.04.2015, 17:13:44
    Author     : fits-dev
--%>
<!-- modal delUser -->
<form id="delUserForm" delUserLogin="" action="admin/deluser.htm">
    <div class="modal fade" id="delUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Внимание</h4>
                </div>
                <div class="modal-body">
                    <h3>Удалить пользователя?</h3> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Отмена</button>
                    <button type="submit" class="btn btn-danger">Удалить</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!-- modal delUser -->
