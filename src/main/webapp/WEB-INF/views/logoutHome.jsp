<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-15
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header.jsp</title>
    <style>
        .header {
            box-sizing: border-box;
            position: relative;
            height: 100%;
            z-index: 60;
            display: block;
            line-height: 1.2;
            color: #0b5ed7;
        }

        .inner {
            width: 1110px;
            margin: 0 auto;
            padding: 0 15px;
            position: relative;
            height: 100%;
            text-align: center;
        }

        .header_logo {
            float: left;
            width: 30%;
            box-sizing: border-box;
            flex: 1;
            margin-top: 20px;
        }

        .header_search {
            float: left;
            margin-left: 5%;
            width: 30%;
            box-sizing: border-box;
            flex: 1;
            margin-top: 25px;
        }

        .header_login {
            float: right;
            width: 30%;
            box-sizing: border-box;
            flex: 1;
            margin-top: 25px;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="header_top">
        <div class="inner">
            <div class="header_logo">
                <h3>project_blog</h3>
            </div>
            <div class="header_search" style="display: inline-block">
                <input type="text" name="search" size="30" placeholder="검색어를 입력하세요">
                <input type="button" name="search_button" value="검색">
            </div>
            <div class="header_login">
                <input type="button" onclick="login_button()" value="로그인">
            </div>
        </div>
    </div>
</div>
</body>
<script>
    const login_button = () => {
        location.href = "/member/login";
    }
</script>
</html>
