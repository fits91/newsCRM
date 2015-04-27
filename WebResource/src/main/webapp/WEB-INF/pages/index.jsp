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

    <div class="row marketing">
        <div class="col-md-12">
            <p class="text-center"><img src="http://content.screencast.com/users/fits91/folders/Jing/media/d083cec8-8fc5-4d33-8bfd-dcd157be775c/2015-04-26_1947.png"/></p>
        </div>

    </div>
    <p class="bg-primary text-center">Last news</p>
    <div id="news">
        <c:import url="mapping/news-main.jsp"/>
    </div>  

    <footer class="footer">
        <p>© Bulletin Board 2015</p>
    </footer>

</div> <!-- /container -->
</body>
</html>