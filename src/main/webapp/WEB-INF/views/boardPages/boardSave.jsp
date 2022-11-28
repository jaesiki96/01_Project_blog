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
    <style>
        .board_write {
            width: 50%;
            align-items: center;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="board_write">
    <form action="/board/save" method="post" name="saveForm" enctype="multipart/form-data" class="mt-5">
        <input type="hidden" id="memberId" name="memberId" class="form-control">
        <input type="text" id="boardTitle" name="boardTitle" placeholder="제목을 입력하세요." class="form-control"> <br>
        <select name="boardTag" id="boardTag" class="form-select">
            <option value="">주제를 선택해주세요</option>
            <option value="음식">음식</option>
            <option value="리뷰">리뷰</option>
            <option value="여행">여행</option>
            <option value="뉴스">뉴스</option>
            <option value="자동차">자동차</option>
            <option value="IT/과학">IT/과학</option>
        </select> <br>
        <input type="file" id="boardFile" name="boardFile" value="파일 첨부" class="form-control"> <br>
        <textarea id="boardContents" name="boardContents" cols="30" rows="10" placeholder="내용을 입력하세요." class="form-control"></textarea> <br>
        <input type="button" onclick="board_button()" value="글 올리기" class="form-control">
    </form>
</div>
<jsp:include page="../layout/footer.jsp" flush="false"></jsp:include>
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
