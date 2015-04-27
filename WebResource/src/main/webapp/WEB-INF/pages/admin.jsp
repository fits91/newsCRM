<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<c:import url="header.jsp"/>
<body>

    <c:url value="/j_spring_security_logout" var="logoutUrl" />
    <form action="${logoutUrl}" method="post" id="logoutForm">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>
    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/WebResource/admin">Admin panel</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href data-toggle="modal" data-target="#addUser">Add user</a></li>
                    <li><a href data-toggle="modal" data-target="#addNews">Add news</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li><a href="javascript:formSubmit()">Logout (${pageContext.request.userPrincipal.name})</a></li>
                        </c:if>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="col-md-8">
        <div id="news">
            <c:import url="mapping/news.jsp"/>
        </div>
    </div>
    <div class="col-md-4">
        <div id="users">
            <c:import url="mapping/users.jsp"/>
        </div>
    </div>
    <!--modal addUser-->
    <c:import url="modal/addUser.jsp"/>
    <!--modal delUser-->
    <c:import url="modal/delUser.jsp"/>
    <!--modal addNews-->
    <c:import url="modal/addNews.jsp"/>
    <!--modal delNews-->
    <c:import url="modal/delNews.jsp"/>
    <div id="editusers">
    </div>
    <div id="editnews">
    </div>
</body>
</html>


