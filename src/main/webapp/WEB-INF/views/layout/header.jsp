<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>header</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
</head>
<body>
<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                    <use xlink:href="#bootstrap"/>
                </svg>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <c:choose>
                    <c:when test="${sessionScope.loginId != null}">
                        <li><a href="/" class="nav-link px-2 text-white">Home</a></li>
                        <li><a href="/myBlog" class="nav-link px-2 text-white">Blog</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/" class="nav-link px-2 text-secondary">Home</a></li>
                        <li><a href="/member/login" class="nav-link px-2 text-white">로그인 후 이용해주세요.</a></li>
                    </c:otherwise>
                </c:choose>
                <c:if test="${sessionScope.loginId == 'admin'}">
                    <li><a href="/member/members" class="nav-link px-2 text-white">members</a></li>
                </c:if>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search" action="/board/search">
                <div class="input_select" style="display: inline-block">
                    <select name="type" class="form-select bg-dark" style="color: white">
                        <option value="boardTitle" selected>제목</option>
                        <option value="boardTag">주제</option>
                        <option value="boardWriter">작성자</option>
                    </select>
                </div>
                <div class="input_input" style="display: inline-block">
                    <input type="search" name="q" class="form-control form-control-dark text-bg-dark"
                           placeholder="검색"
                           aria-label="Search">
                </div>
            </form>

            <div class="text-end">
                <%-- 로그인&로그아웃 박스 --%>
                <c:choose>
                    <c:when test="${sessionScope.loginId != null}">
                        <button type="button" onclick="myProfile_button()"
                                class="btn btn-outline-light me-2">${sessionScope.loginId}</button>
                        <button type="button" onclick="logout_button()" class="btn btn-warning">로그아웃</button>
                    </c:when>
                    <c:otherwise>
                        <button type="button" onclick="login_button()" class="btn btn-outline-light me-2">로그인</button>
                        <button type="button" onclick="signUp_button()" class="btn btn-warning">회원가입</button>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</header>
</body>
<script>
    const login_button = () => {
        location.href = "/member/login";
    }
    const logout_button = () => {
        location.href = "/logout";
    }
    const signUp_button = () => {
        location.href = "/member/save";
    }
    const myProfile_button = () => {
        location.href = "/member/member";
    }
</script>
</html>
