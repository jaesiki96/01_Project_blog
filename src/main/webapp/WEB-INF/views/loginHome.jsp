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
            margin: 0 auto;
            background: lightgray;
            height: 215px;
        }

        .inner {
            width: 1110px;
            margin: 0 auto;
            text-align: center;
        }

        .header_logo {
            float: left;
            box-sizing: border-box;
            margin: 0 auto;
        }

        .header_search {
            box-sizing: border-box;
            margin-top: 20px;
        }

        .header_login {
            float: right;
            box-sizing: border-box;
            margin-top: 20px;
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
                <input type="button" onclick="logout_button()" value="로그아웃">
            </div>
        </div>
    </div>
</div>
</body>
<script>
    const logout_button = () => {
        location.href = "/logout";
    }
</script>
</html>
