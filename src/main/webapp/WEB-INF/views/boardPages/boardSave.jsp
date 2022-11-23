<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-21
  Time: 오전 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시글 작성</title>
</head>
<body>
<div class="board_write">
    <form action="/board/save" method="post" name="saveForm" enctype="multipart/form-data">
        <input type="text" id="boardTitle" name="boardTitle" placeholder="제목을 입력하세요."> <br>
        <select name="boardTag" id="boardTag">
            <option value="">주제를 선택해주세요</option>
            <option value="tag_food">음식</option>
            <option value="tag_review">리뷰</option>
            <option value="tag_trip">여행</option>
            <option value="tag_news">뉴스</option>
            <option value="tag_car">자동차</option>
            <option value="tag_it">IT/과학</option>
        </select> <br>
        <input type="file" id="boardFile" name="boardFile" value="파일 첨부"> <br>
        <textarea id="boardContents" name="boardContents" cols="30" rows="10" placeholder="내용을 입력하세요."></textarea> <br>
        <input type="button" onclick="board_button()" value="글 올리기">
    </form>
</div>
</body>
<script>
    const board_button = () => {
        const tag = document.getElementById("boardTag").value;
        const title = document.getElementById("boardTitle").value;
        const contents = document.getElementById("boardContents").value;
        if (tag == "") {
            alert("주제를 선택해주세요.")
        } else if (title == "") {
            alert("제목을 입력해주세요.")
        } else if (contents == "") {
            alert("내용을 입력해주세요.")
        } else {
            document.saveForm.submit();
        }
    }
</script>
</html>
