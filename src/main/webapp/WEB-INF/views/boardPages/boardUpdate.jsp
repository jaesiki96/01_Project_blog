<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-02
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>boardUpdate.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <style>
        #update-form {
            width: 800px;
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container" id="update-form">
    <form action="/board/update" method="post" name="updateForm">
        <input type="hidden" name="id" value="${board.id}" class="form-control" readonly>
        <input type="text" name="boardTitle" value="${board.boardTitle}" class="form-control">
        <select name="boardTag" id="boardTag" class="form-control">
            <option value="">주제를 선택해주세요</option>
            <option value="tag_food">음식</option>
            <option value="tag_review">리뷰</option>
            <option value="tag_trip">여행</option>
            <option value="tag_news">뉴스</option>
            <option value="tag_car">자동차</option>
            <option value="tag_it">IT/과학</option>
        </select> <br>
        <textarea name="boardContents" cols="30" rows="10" class="form-control">${board.boardContents}</textarea>
        <input type="button" value="수정" onclick="updateReqFn()" class="btn btn-primary">
    </form>
</div>
</body>
<script>
    const updateReqFn = () => {
        const title = document.getElementById("boardTitle").value;
        const tag = document.getElementById("boardTag").value;
        const contents = document.getElementById("boardContents").value;
        if (title == "") {
            alert("제목을 입력해주세요.")
        } else if (tag == "") {
            alert("주제를 선택해주세요.")
        } else if (contents == "") {
            alert("내용을 입력해주세요.")
        } else {
            document.updateForm.submit();
        }
    }
</script>
</html>
