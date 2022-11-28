<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>회원관리 (관리자용)</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        table, th, td {
            border: 1px solid #bcbcbc;
        }
        table {
            width: 600px;
            height: 200px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 200px;
        }
        tr, td {
            text-align: center;
        }
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<table>
    <tr>
        <th>회원번호</th>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>이름</th>
        <th>전화번호</th>
        <th>회원삭제</th>
    </tr>
    <c:forEach items="${memberList}" var="member">
        <tr>
            <td>${member.id}</td>
            <td>${member.memberId}</td>
            <td>${member.memberPassword}</td>
            <td>${member.memberName}</td>
            <td>${member.memberPhone}</td>
            <td>
                <button class="btn btn-danger" onclick="deleteMember('${member.id}')">삭제</button>
            </td>
        </tr>
    </c:forEach>
</table>
<jsp:include page="../layout/footer.jsp" flush="false"></jsp:include>
</body>
<script>
    const deleteMember = (clickedId) => {
        if (clickedId) {
            confirm("회원을 삭제하시겠습니까?")
            location.href = "/member/delete?id="+clickedId;
        }
    }
</script>
</html>
