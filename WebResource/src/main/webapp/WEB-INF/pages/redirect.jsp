<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <body>
        <h1>Redirect. Please, wait.</h1>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
            <script language="JavaScript">
                window.location.href = "/WebResource/admin";
            </script>
        </sec:authorize>
            
        <sec:authorize access="hasRole('ROLE_MODERATOR')">
            <script language="JavaScript">
                window.location.href = "/WebResource/moderator";
            </script>
        </sec:authorize>
        <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
            <script language="JavaScript">
                window.location.href = "/WebResource/403";
            </script>
        </sec:authorize>
        <sec:authorize access="hasRole('ROLE_USER')">
            <script language="JavaScript">
                window.location.href = "/WebResource/403";
            </script>
        </sec:authorize>
    </body>
</html>