<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%-- 
    Document   : news
    Created on : 21.04.2015, 12:33:43
    Author     : fits-dev
--%>
<script type="text/javascript" language="javascript" class="init">

    $(document).ready(function () {
        $('#news_table').dataTable();
    });

</script>
<div class="bs-example">
    <h4>News</h4>
    <table id="news_table" class="table table-bordered">
        <thead>
            <tr>
                <th>Title</th>
                <th>User</th>
                <th>Body</th>
                <th>Data created</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${news}" var="news">
                <sec:authorize access="hasRole('ROLE_MODERATOR')">
                    <c:set var="titlePreview" value="${fn:substring(news.title, 0, 60)}" />
                    <c:set var="bodyPreview" value="${fn:substring(news.body, 0, 60)}" />
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <c:set var="titlePreview" value="${fn:substring(news.title, 0, 25)}" />
                    <c:set var="bodyPreview" value="${fn:substring(news.body, 0, 25)}" />
                </sec:authorize>

                <tr>
                    <td>${titlePreview}</td>
                    <td>${news.userLogin}</td>
                    <td>${bodyPreview}...</td>
                    <td>${news.dataCreate}</td>
                    <td>
                        <div class="btn-group" role="group" aria-label="...">
                            <button onclick="editNewsModal(${news.newsID})" type="button" class="btn btn-default btn-xs">Edit</button>
                            <button onclick="delNewsModal(${news.newsID})" type="button" class="btn btn-danger btn-xs">Delete</button>
                        </div>	
                    </td>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</div>
