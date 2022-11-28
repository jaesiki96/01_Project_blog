<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>footer</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/footers/">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <c:choose>
                <c:when test="${sessionScope.loginId != null}">
                    <li class="nav-item"><a href="/" class="nav-link px-2 text-muted">Home</a></li>
                    <li class="nav-item"><a href="/logout" class="nav-link px-2 text-muted">Logout</a></li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item"><a href="/" class="nav-link px-2 text-muted">Home</a></li>
                    <li class="nav-item"><a href="/member/login" class="nav-link px-2 text-muted">Login</a></li>
                    <li class="nav-item"><a href="/member/save" class="nav-link px-2 text-muted">sign up</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
        <p class="text-center text-muted">&copy; blog_project</p>
    </footer>
</div>
</body>
</html>
