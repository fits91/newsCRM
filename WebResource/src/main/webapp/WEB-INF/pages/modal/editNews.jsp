<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
    Document   : editNews
    Created on : 22.04.2015, 11:09:53
    Author     : fits-dev
--%>
<!-- modal editNews -->
<form id="editNewsForm" userEdit="${pageContext.request.userPrincipal.name}" editNewsID="${news.newsID}" action="moder/newsedit.htm">
    <div class="modal fade" id="editNews" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Edit News</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="display: block">
                        <label for="usr">Title:</label>
                        <input type="text" value="${news.title}" class="form-control" id="title_edit" required="">
                    </div>

                    <div class="form-group" style="display: block">
                        <label for="comment">Body:</label>
                        <textarea class="form-control" rows="5" id="article_edit">${news.body}</textarea>
                    </div>

                    <div class="form-group" style="display: block">
                        <label for="comment">Data:</label>
                        <input type="text" value="${news.dataCreate}" class="form-control" id="datetimepicker2_edit">

                        <script type="text/javascript">
                            $(function () {
                                $('#datetimepicker2_edit').datetimepicker({
                                    language: 'ru',
                                    format: 'YYYY:MM:DD HH:mm:s'
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    <button onclick="editNews(${news.newsID})" class="btn btn-success">Save</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!-- modal editNews -->
