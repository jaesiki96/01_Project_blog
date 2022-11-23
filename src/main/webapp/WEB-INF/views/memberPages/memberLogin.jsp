<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-16
  Time: 오전 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<style>
    .login_inner {
        position: relative;
        width: 743px;
        margin: 0 auto;
        text-align: center;
        box-sizing: border-box;
    }

    .logo {
        margin-top: 150px;
        text-align: center;
    }

    .login_box {
        box-sizing: border-box;
        width: 460px;
        margin-left: 280px;
    }

    .find_wrap {
        text-align: center;
        padding: 20px 0 35px;
    }

    li {
        display: inline-block;
    }

    input {
        display: block;
    }

    ul {
        font-size: 12px;
    }

    .login_button {
        width: 178px;
    }
</style>
<body>
<div class="login_Page">
    <div class="login_inner">
        <h1 class="logo">
            project_blog
        </h1>
        <div class="login_box">
            <form action="/member/login" method="post" name="loginForm">
                <input type="text" name="memberId" id="memberId" placeholder="아이디">
                <input type="password" name="memberPassword" id="memberPassword" placeholder="비밀번호">
                <input type="submit" class="login_button" value="로그인">
            </form>
        </div>
        <ul class="find_wrap">
            <li>
                <a href="/member/save">회원가입</a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
