<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-15
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<header id="header" class="header">
    <div class="header_common">
        <div class="header_inner">
            <%-- 로고 --%>
            <div class="area_logo">
                <a href="/" class="main_logo">project_blog</a>
            </div>
            <%-- 검색창 박스 --%>
            <div class="area_search_box">
                <form action="/board/search" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                    <div class="input-group">
                        <select name="type" class="form-select">
                            <option value="boardTitle" selected>제목</option>
                            <option value="boardTag">주제</option>
                            <option value="boardWriter">작성자</option>
                        </select>
                        <input type="search" name="q" class="form-control form-control-dark text-bg-dark" placeholder="검색어를 입력하세요"
                               aria-label="Search">
                        <button class="btn btn-outline-light" value="검색"><i class="bi bi-search"></i></button>
                    </div>
                </form>
            </div>
            <%-- 로그인&로그아웃 박스 --%>
            <c:choose>
                <c:when test="${sessionScope.loginId != null}">
                    <div class="area_gnb">
                        <a href="/member">내정보</a>
                        <input type="button" onclick="logout_button()" value="로그아웃">
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="area_gnb">
                        <input type="button" onclick="login_button()" value="로그인">
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</header>
<main id="container" class="container">
    <div class="layout_content">
        <div id="content" class="content">

        </div>
        <aside class="aside">
            <div class="wrap_my_information">
                <div class="loginCtrl.loaded">
                    <c:choose>
                        <c:when test="${sessionScope.loginId != null}">
                            <div class="area_my_account">
                                <nav class="menu_my_blog">
                                    <a href="/myBlog">내 블로그</a>
                                    <a href="/board/save">글쓰기</a>
                                </nav>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="area_my_account">
                                <nav class="menu_my_blog">
                                    <p>로그인 후 이용해주세요</p>
                                </nav>
                            </div>
                        </c:otherwise>
                    </c:choose>
                    <c:if test="${sessionScope.loginId == 'admin'}">
                        <div class="area_my_account">
                            <nav class="menu_my_blog">
                                <a href="/member/members">회원관리</a>
                            </nav>
                        </div>
                    </c:if>
                </div>
            </div>
        </aside>
    </div>
</main>
<footer id="footer" class="footer">
    <div class="inner">
        <nav class="navigator_footer">
            <a href=""></a>
        </nav>
        <address class="address">
            <a href=""></a>
        </address>
    </div>
</footer>
</body>
<script>
    const login_button = () => {
        location.href = "/member/login";
    }
    const logout_button = () => {
        location.href = "/logout";
    }
</script>
</html>
