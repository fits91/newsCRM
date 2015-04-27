<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<c:import url="header.jsp"/>
<body onload='document.loginForm.username.focus();'>


    <div class="col-md-4">
    </div>
    <div class="col-md-4">
        <form name='loginForm'
              action="<c:url value='/j_spring_security_check' />" method='POST'>

            <c:if test="${not empty error}">
                <div class="alert alert-danger" role="alert">${error}</div>
            </c:if>
            <c:if test="${not empty msg}">
                <div class="alert alert-info" role="alert">${msg}</div>
            </c:if>

            <div class="form-group">
                <label for="inputEmail">Login</label>
                <input type="text" class="form-control" name="username" required="" placeholder="Login">
            </div>
            <div class="form-group">
                <label for="inputPassword">Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>

            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />

        </form>
    </div>
    <div class="col-md-4">
    </div>
</body>
</html>