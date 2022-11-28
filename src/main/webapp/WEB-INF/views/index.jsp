<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>blog_project</title>
    <link rel="stylesheet" href="/resources/css/blog.css">
    <link rel="stylesheet" href="/resources/css/blog.rtl.css">
    <style>
        a {
            text-decoration: none
        }
    </style>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<main class="container mt-lg-5">
    <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
        <div class="col-md-6 px-0">
            <h1 class="display-4 fst-italic" style="font-family: '나눔스퀘어 네오 ExtraBold'">반환 미군기지의 흔적을 찾아서</h1>
            <p class="lead my-3" style="font-family: '나눔스퀘어 네오 Bold'">
                이런분께 추천드려요!
            </p>
            <p class="lead my-3" style="font-family: '나눔스퀘어 네오 Light'">
                - 미군기지와 카투사에 관심이 있는 분 <br>
                - 용산 뿐 아니라 다른 알려지지 않은 많은 미군기지에 관심 있는 분 <br>
                - 미군과 관련된 한국 근현대사의 현장에 관심이 있는 분
            </p>
            <p class="lead mb-0" style="font-size: small"><a href="https://brunch.co.kr/brunchbook/mycampgreaves" class="text-white fw-bold">Read more</a></p>
        </div>
    </div>

    <div class="row g-5">
        <div class="col-md-8">
            <h3 class="pb-4 mb-4 fst-italic border-bottom" style="font-family: '나눔스퀘어 네오 ExtraBold'">
                이달의 Blog
            </h3>

            <article class="blog-post">
                <h2 class="blog-post-title mb-1"><a href="/board?id=15" style="font-family: '나눔스퀘어 네오 Bold'">관리자</a></h2>

                <p style="font-family: '나눔스퀘어 네오 Light'">오랜만에 소설을 읽었다. 알고 지낸 지 오래되었으나 손이 가지 않던 두근두근 내 인생. <br>
                    본의 아니게 소설에 대한 사전 정보가 많아서 '식상' 할 거라는 추측 때문이었을까...</p>
                <hr>
                <p style="font-family: '나눔스퀘어 네오 Light'">[김애란 다시 읽기] 두근두근 내 인생 / 바깥은 여름 / 잊기 좋은</p>

                <h2 class="blog-post-title mb-1"><a href="/board?id=16" style="font-family: '나눔스퀘어 네오 Bold'">회원1</a></h2>

                <p style="font-family: '나눔스퀘어 네오 Light'">동명주말농장식당 닭 한 마리 오리 한 마리 영업시간 매일 9:00~22:00...</p>
                <hr>
                <p style="font-family: '나눔스퀘어 네오 Light'">칠곡 야외 돌판 오리고기 (동명 주말농장 식당)</p>
            </article>

        </div>

        <div class="col-md-4">
            <div class="position-sticky" style="top: 2rem;">
                <div class="p-4 mb-3 bg-light rounded">
                    <h4 class="fst-italic" style="font-family: '나눔스퀘어 네오 Bold'">공지사항</h4>
                    <p class="mb-0">
                        <a href="https://section.blog.naver.com/Notice.naver?docId=8715" style="font-size: 12px">[공지] 블로그 이미지 서버 점검..</a> <br>
                        <a href="https://section.blog.naver.com/Notice.naver?docId=8546" style="font-size: 12px">[안내] 이태원 사고 관련 게시글 작성에 주의..</a> <br>
                        <a href="https://section.blog.naver.com/Notice.naver?docId=8455" style="font-size: 12px">[공지수정] 판교 IDC 센터 화재로 인한 블로그..</a> <br>
                    </p>
                </div>

                <div class="p-4">
                    <h4 class="fst-italic">Elsewhere</h4>
                    <ol class="list-unstyled">
                        <li><a href="https://github.com/jaesiki96">GitHub</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</main>
<jsp:include page="layout/footer.jsp" flush="false"></jsp:include>
</body>
</html>
