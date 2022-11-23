<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-02
  Time: 오후 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>deleteCheck.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <style>
        #detail {
            width: 800px;
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container" id="delete-check">
    <input type="text" id="boardPass" class="form-control" placeholder="비밀번호">
    <button class="btn btn-secondary" onclick="passCheck()">확인</button>
</div>
</body>
<script>
    const passCheck = () => {
        if (confirm("삭제하시겠습니까?")) {
            location.href = "/board/delete?id=" + id;
        } else {

        }
    }
</script>
</html>
