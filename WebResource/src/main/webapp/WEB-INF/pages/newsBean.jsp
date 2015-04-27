<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
    Document   : header
    Created on : 15.04.2015, 16:23:19
    Author     : fits-dev
--%>
<c:import url="header.jsp"/>
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation" class="active"><a href="/WebResource/index">Home</a></li>
                <li role="presentation"><a href="/WebResource/login">Login</a></li>
            </ul>
        </nav>
        <h3 class="text-muted"><a href="/WebResource/index">Bulletin Board</a></h3>
    </div>


    <div id="news">
    <h2>${news.title}</h2>
    <p class="lead">${news.body}</p>
    </div>
    <p class="text-center"><a href="/WebResource/index" class="btn-lg btn-info" role="button">Return</a></p>
    <footer class="footer">
        <p>© Company 2015</p>
    </footer>

</div> <!-- /container -->
</body>
</html>