<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
    Document   : addNews
    Created on : 14.04.2015, 17:13:51
    Author     : fits-dev
--%>
<!-- modal addNews -->
<form id="addNewsForm" action="moder/addnews.htm">
    <div class="modal fade" id="addNews" userAdd="${pageContext.request.userPrincipal.name}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add News</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="display: block">
                        <label for="usr">Title:</label>
                        <input type="text" class="form-control" id="title_add" required="">
                    </div>

                    <div class="form-group" style="display: block">
                        <label for="comment">Body:</label>
                        <textarea class="form-control" rows="5" id="article" required=""></textarea>
                    </div>

                    <div class="form-group" style="display: block" required="">
                        <label for="comment">Data:</label>
                        <input type="text" class="form-control" id="datetimepicker2" required="">

                        <script type="text/javascript">
                            $(function () {
                                $('#datetimepicker2').datetimepicker({
                                    language: 'ru',
                                    format: 'YYYY:MM:DD HH:mm:s'
                                });
                            });
                        </script>
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
<!-- modal addNews -->
