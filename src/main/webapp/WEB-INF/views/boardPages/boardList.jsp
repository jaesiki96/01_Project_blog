<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>글 목록</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        #list {
            width: 800px;
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container" id="list">
<table class="table table-striped table-hover text-center">
    <tr>
        <th>글 제목</th>
        <th>작성일</th>
    </tr>
    <c:forEach items="${boardList}" var="board">
        <tr>
            <td>
                <a href="/board?id=${board.id}">${board.boardTitle}</a>(${board.boardHits})
            </td>
            <td>
                <fmt:formatDate value="${board.boardCreatedDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
