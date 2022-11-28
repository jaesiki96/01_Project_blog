<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/signin.css" rel="stylesheet">
    <script src="/resources/js/jquery.js"></script>
</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <form action="/member/save" method="post" name="saveForm">
        <h1 class="h3 mb-5 fw-normal">회원가입</h1>

        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="memberId" name="memberId" oninput="idCheck()" placeholder="비밀번호">
            <label for="memberId">아이디</label>
            <span id="id_check"></span>
        </div>
        <div class="form-floating mb-3">
            <input type="password" class="form-control" id="memberPassword" name="memberPassword" onblur="pwCheck()" placeholder="비밀번호">
            <label for="memberPassword">비밀번호</label>
            <span id="pw_check"></span>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="memberName" name="memberName" onblur="nameCheck()" placeholder="이름">
            <label for="memberName">이름</label>
            <span id="name_check"></span>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="memberPhone" name="memberPhone" onblur="phoneCheck()" placeholder="전화번호">
            <label for="memberPhone">전화번호</label>
            <span id="phone_check"></span>
        </div>

        <input class="w-100 btn btn-lg btn-primary" value="가입하기" type="submit">
        <p class="mt-5 mb-3 text-muted">&copy; blog_project</p>
    </form>
</main>
</body>
<script>
    const idCheck = () => {
        const id = document.getElementById("memberId").value;
        const idCheck = document.getElementById("id_check");
        $.ajax({
            type: "post",
            url: "/member/idCheck",
            data: {inputId: id},
            success: function (result) {
                if (result == 0) {
                    idCheck.innerHTML = null;
                } else {
                    idCheck.innerHTML = "중복된 아이디가 있습니다.";
                    idCheck.style.color = "red";
                }
            },
            error: function () {
                return "/member/save";
            }
        })
    }

    const pwCheck = () => {
        const pw = document.getElementById("memberPassword").value;
        const pwCheck = document.getElementById("pw_check");
        if (pw == "") {
            pwCheck.innerHTML = "필수 정보입니다.";
            pwCheck.style.color = "red";
        } else {
            pwCheck.innerHTML = null;
        }
    }

    const nameCheck = () => {
        const name = document.getElementById("memberName").value;
        const nameCheck = document.getElementById("name_check");
        if (name == "") {
            nameCheck.innerHTML = "필수 정보입니다.";
            nameCheck.style.color = "red";
        } else {
            nameCheck.innerHTML = null;
        }
    }

    const phoneCheck = () => {
        const phone = document.getElementById("memberPhone").value;
        const phoneCheck = document.getElementById("phone_check");
        if (phone == "") {
            phoneCheck.innerHTML = "필수 정보입니다.";
            phoneCheck.style.color = "red";
        } else {
            phoneCheck.innerHTML = null;
        }
    }

</script>
</html>
