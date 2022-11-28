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
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container" id="update-form">
    <form action="/board/update" method="post" name="updateForm">
        <input type="hidden" name="id" value="${board.id}" class="form-control" readonly>
        <input type="text" name="boardTitle" value="${board.boardTitle}" class="form-control">
        <select name="boardTag" id="boardTag" class="form-control">
            <option value="">주제를 선택해주세요</option>
            <option value="음식">음식</option>
            <option value="리뷰">리뷰</option>
            <option value="여행">여행</option>
            <option value="뉴스">뉴스</option>
            <option value="자동차">자동차</option>
            <option value="IT/과학">IT/과학</option>
        </select> <br>
        <textarea name="boardContents" cols="30" rows="10" class="form-control">${board.boardContents}</textarea>
        <input type="button" value="수정" onclick="updateReqFn()" class="btn btn-primary">
    </form>
</div>
<jsp:include page="../layout/footer.jsp" flush="false"></jsp:include>
</body>
<script>
    const updateReqFn = () => {
        document.updateForm.submit();
    }
</script>
</html>
