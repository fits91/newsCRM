<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%-- 
    Document   : news
    Created on : 24.04.2015, 12:33:43
    Author     : fits-dev
--%>
<script type="text/javascript" language="javascript" class="init">

    $(document).ready(function () {
        $('#news_table').dataTable();
    });

</script>
<div class="bs-example">
    <table id="news_table" class="table table-bordered">
        <thead>
            <tr>
                <th>Title</th>
                <th>Body</th>
                <th>Data created</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${news}" var="news">
                <c:set var="titlePreview" value="${fn:substring(news.title, 0, 35)}" />
                <c:set var="bodyPreview" value="${fn:substring(news.body, 0, 35)}" />
                <tr>
                    <td>${titlePreview}</td>
                    <td>${bodyPreview}...</td>
                    <td>${news.dataCreate}</td>
                    <td>
                            <a href="/WebResource/news/${news.newsID}" class="btn-sm btn-info" role="button">Show more</a>
                    </td>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</div>
