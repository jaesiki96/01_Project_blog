<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-16
  Time: 오후 1:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
    <style>
        .save_page {
            margin: 0 auto;
            display: block;
        }
        .join_content {
            display: block;
            position: relative;
            margin-left: 865px;
            width: auto;
            text-align: left;
            box-sizing: border-box;
        }

        .save_logo {
            margin-top: 200px;
            text-align: center;
        }

        .h3_item {
            font-size: 13px;
        }

        .save_button {
            width: 178px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="save_page">
    <div class="save_logo">
        <h1 class="logo">
            project_blog
        </h1>
    </div>
    <div class="join_content">
        <form action="/member/save" method="post">
            <h3 class="h3_item">아이디</h3>
            <input type="text" name="memberId" id="memberId" placeholder="아이디">
            <h3 class="h3_item">비밀번호</h3>
            <input type="text" name="memberPassword" id="memberPassword" placeholder="비밀번호">
            <h3 class="h3_item">이름</h3>
            <input type="text" name="memberName" id="memberName" placeholder="이름">
            <h3 class="h3_item">휴대전화</h3>
            <input type="text" name="memberPhone" id="memberPhone" placeholder="전화번호 입력"> <br>
            <input type="submit" class="save_button" value="가입하기">
        </form>
    </div>
</div>
</body>
</html>
