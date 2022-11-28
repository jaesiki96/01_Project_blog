<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>내 블로그</title>
    <link rel="stylesheet" href="/resources/css/styles.css">
    <link rel="stylesheet" href="/resources/js/scripts.js">
</head>
<body>
<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="/myBlog">${sessionScope.loginId}님의 블로그</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="/">홈</a></li>
                <li class="nav-item"><a class="nav-link" href="/board/save">글 쓰기</a></li>
                <li class="nav-item"><a class="nav-link" href="/board/">글 목록</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Page header with logo and tagline-->
<header class="py-5 bg-light border-bottom mb-4">
    <div class="container">
        <div class="text-center my-5">
            <h1 class="fw-bolder">${sessionScope.loginId}님의 블로그</h1>
            <p class="lead mb-0">문득 스치는 생각이나 기분, 일기 등 다양한 이야기로
                나만의 공간을 채워보세요!</p>
        </div>
    </div>
</header>
<!-- Page content-->
<div class="container">
    <div class="row">
        <!-- Blog entries-->
        <div class="col-lg-8">
            <!-- Featured blog post-->
            <div class="card mb-4">
                <a href="#!"><img class="card-img-top" src="https://dimg.donga.com/wps/NEWS/IMAGE/2020/04/18/100708414.1.jpg"
                                  alt="..."/></a>
                <div class="card-body">
                    <h2 class="card-title">[김애란 다시 읽기]</h2>
                    <p class="card-text">오랜만에 소설을 읽었다. 알고 지낸 지 오래되었으나 손이 가지 않던 두근두근 내 인생. <br>
                        본의 아니게 소설에 대한 사전 정보가 많아서 '식상' 할 거라는 추측 때문이었을까...</p>
                    <a class="btn btn-primary" href="/board?id=15">더 읽기</a>
                </div>
            </div>
            <!-- Nested row for non-featured blog posts-->
            <div class="row">
                <div class="col-lg-6">
                    <!-- Blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="https://mblogthumb-phinf.pstatic.net/MjAxOTAyMDhfNTYg/MDAxNTQ5NjIyNDE1Mzk2.-P7tuC8YwvfMfPE7TN425VCVg7tG3FiMWnjTwjjspo0g.7L_1ewysOiqrLatcUuJApoXnGG-u1Q1na-6V6wghZyQg.JPEG.chaosok/20181226_125239.jpg?type=w800"
                                          alt="..."/></a>
                        <div class="card-body">
                            <h2 class="card-title h4">칠곡 야외 돌판 오리고기 (동명 주말농장 식당)</h2>
                            <p class="card-text">동명주말농장식당 닭 한 마리 오리 한 마리 영업시간 매일 9:00~22:00...</p>
                            <a class="btn btn-primary" href="/board?id=16">더 읽기</a>
                        </div>
                    </div>
                    <!-- Blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="https://mblogthumb-phinf.pstatic.net/MjAyMDA2MjVfMTA0/MDAxNTkzMDgzNzcwMTQ2.NHhOFvF5Mr0l-qW-VDH4sqVk_LYN7XrwpQBi28z7xX4g.qxusZNhZV3rZkor_j-2CYtp5rxSRuLFYrigmqOqfJPAg.JPEG.cozy95/21.JPG?type=w800"
                                          alt="..."/></a>
                        <div class="card-body">
                            <h2 class="card-title h4">인천맛집, 여길 왜 이제 알았나싶은 부암갈비</h2>
                            <p class="card-text">서울사람인 저는 어릴 때부터 돼지갈비라고 하면 마포 돼지갈비가 원조인 줄 알고 살아왔습니다.
                                그도 그럴 것이 서울에서 좀 유명하다고 하는 돼지갈비집은 대다수가 '원조마포돼지갈비' 를 상호로 사용하는 경우가 많기 때문이죠...</p>
                            <a class="btn btn-primary" href="/board?id=17">더 읽기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <!-- Blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/75615_1609740406_ch6ezqXN.png"
                                          alt="..."/></a>
                        <div class="card-body">
                            <h2 class="card-title h4">부평카페추천 랑데자뷰 인천부평점 데이트하기 좋은 카페</h2>
                            <p class="card-text">남자친구랑 데이트할 때 항상 예쁜 카페를 찾아다니는데 오늘은 정말 갔던
                                카페 중 손에 꼽을 정도로 분위기와 맛을 다 잡은 랑데자뷰 인천 부평점에 방문한 후기를 작성하려고 해요!...</p>
                            <a class="btn btn-primary" href="/board?id=18">더 읽기</a>
                        </div>
                    </div>
                    <!-- Blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="https://post-phinf.pstatic.net/MjAxODEyMjFfODUg/MDAxNTQ1MzcyNzg5MDk1.xfLuLPK6BG6RfR3AClj7vVblAbWhWWrg3BDCiQhcsK8g.Qr469SaS6cBfIeS2wl7T5A2cu0dJr5-nXqoqlrySRFUg.JPEG/%EB%82%98%EB%82%98%EB%A7%81%EA%B3%A02.jpg?type=w1200"
                                          alt="..."/></a>
                        <div class="card-body">
                            <h2 class="card-title h4">갤럭시워치Vs애플워치, 실사용 유저들이 전하는 리얼 후기</h2>
                            <p class="card-text">이 제품을 선택한 이유는 무엇인가요? 스마트워치를 사용하기 전에도 평소에 시계를 착용하지 않는 편이었다...</p>
                            <a class="btn btn-primary" href="/board?id=19">더 읽기</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Pagination-->
            <nav aria-label="Pagination">
                <hr class="my-0"/>
                <ul class="pagination justify-content-center my-4">
                    <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
                    </li>
                    <li class="page-item active" aria-current="page"><a class="page-link" href="#!">1</a></li>
                    <li class="page-item"><a class="page-link" href="#!">2</a></li>
                    <li class="page-item"><a class="page-link" href="#!">3</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>
<%--                    <li class="page-item"><a class="page-link" href="#!">15</a></li>--%>
                    <li class="page-item"><a class="page-link" href="#!">다음</a></li>
                </ul>
            </nav>
        </div>
        <!-- Side widgets-->
        <div class="col-lg-4">
            <!-- Search widget-->
            <div class="card mb-4">
                <div class="card-header">검색</div>
                <div class="card-body">
                    <form action="/board/search" role="search">
                        <div class="input-group">
                            <select name="type" class="form-select-sm" style="border: 1px solid lightgray">
                                <option value="boardTitle" selected>제목</option>
                                <option value="boardTag">주제</option>
                                <option value="boardWriter">작성자</option>
                            </select>
                            <input class="form-control" type="search" name="q" placeholder="검색어를 입력하세요" aria-label="Enter search term..." aria-describedby="button-search"/>
                            <button class="btn btn-primary" id="button-search">검색</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Categories widget-->
            <div class="card mb-4">
                <div class="card-header">Categories</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <ul class="list-unstyled mb-0">
                                <li><a href="/board/search?type=boardTag&q=음식">#음식</a></li>
                                <li><a href="/board/search?type=boardTag&q=리뷰">#리뷰</a></li>
                                <li><a href="/board/search?type=boardTag&q=여행">#여행</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <ul class="list-unstyled mb-0">
                                <li><a href="/board/search?type=boardTag&q=뉴스">#뉴스</a></li>
                                <li><a href="/board/search?type=boardTag&q=자동차">#자동차</a></li>
                                <li><a href="/board/search?type=boardTag&q=IT/과학">#IT/과학</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; blog_project 2022</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<jsp:include page="layout/footer.jsp" flush="false"></jsp:include>
</body>
</html>
