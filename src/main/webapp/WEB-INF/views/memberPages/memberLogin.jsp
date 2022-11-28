<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <form action="/member/login" method="post">
        <h1 class="h3 mb-5 fw-normal">blog_Project</h1>

        <div class="form-floating">
            <input type="text" class="form-control" id="memberId" name="memberId" placeholder="비밀번호">
            <label for="memberId">아이디</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="memberPassword" name="memberPassword" placeholder="비밀번호">
            <label for="memberPassword">비밀번호</label>
        </div>

        <input class="w-100 btn btn-lg btn-primary" value="로그인" type="submit">
        <p class="mt-5 mb-3 text-muted">&copy; blog_project</p>
    </form>
</main>
</body>
</html>
