<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="main-recomm">
<title>Menu bar</title>
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<!-- 외부 스타일 시트 -->
<link href="<%= request.getContextPath() %>/resources/css/menubar-style.css" rel="stylesheet">
<!-- favicon (Real Favicon Generator 등에서 가공 필요) -->
<link rel="icon" type="image/x-icon" href="resources/image/khfavicon.ico">
<!-- 웹 폰트-->
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
<style>
@charset "UTF-8"; /* 인코딩 문자 깨짐 방지 (유니코드 문자열 있을 시) */

/* <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> */

html {
    font-size: 100%;
}

a {
    text-decoration: none;
}

#top {
   
    height: 190px;

}

#top .page-title {
    text-align: center;
   /* font-size: 3rem;*/
}

.search_area {
	text-align: center;
	padding: 30px;
    /* 로고 사이 공백 */
}

.search_area select {
    margin-right: 10px;
}

.input_area {
    border: 6px solid rgba(196, 217, 195, 1);
    padding: 5px 5px 10px 5px;
    margin-right: 10px;
    width: 100%;
}

.input_area input {
    width: 350px;
	height: 30px;
    border: 0px;
}

.mainlogo {
    align-items: center;
    justify-content: center;
    display: flex;
    margin-left: 20px;
}

h2 {
    text-align: center;
}
/* 내비 메뉴 장식 */

nav {
    background-color: rgba(196, 217, 195, 1);
    width: 100%;
}
.main-nav {
    list-style: none;
    text-transform: uppercase;
    font-size: 1.25rem;
    display: flex;
    margin-top: 10px;
    background-color: rgba(196, 217, 195, 1);
    margin-left: 60%;
    margin-bottom: 14px;
}

/* 내비 li 여백 */
.main-nav li {
    margin-left: 20px;
}

/* 내비 a 태그 */
.main-nav a {
    color: black;
    font-size: 14px;
    
}

.main nav a:hover {
    color: #0bd;
}

/* 로고 내비 수평 정렬 */
.page-header {
    display: flex;
    justify-content: space-between;
   
}

/*콘텐츠의 최대 출력 너비 설정 */
.wrapper {
    max-width: 1100px;
    margin: 0 auto;
    padding: 0 4%;
}

.mainlogo {
    height: 100px;
    padding: 30px;
}

.topline {
    border-bottom: 6px solid;
    color: rgba(196, 217, 195, 1);

}
</style>
</head>
<body>
    <div id="top">
        <header class="page-header">
            <nav>
                <ul class="main-nav">
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                    <li><a href="#">마이페이지</a></li>
                    <li><a href="#">장바구니</a></li>
                    <li><a href="#">고객센터</a></li>
                </ul>
            </nav>
            
        </header>
        <!-- 3. 페이지 제목-->
        <div class="mainlogo wrapper">
            <h2 class="page-title">
                <a href="00_메인 추천.html"><img class="logo" src="<%= request.getContextPath() %>/resources/images/logo.png" alt="home logo"></a>    
            </h2>
            <div class="search_area">
                <form method="get">
                    <select id="searchCondition" name="searchCondition">
                        <option value="search">통합검색</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select> 
                    <span class="input_area"> <input type="search"
                        name="searchValue" placeholder="검색할 내용을 입력하세요.">
                    </span>
                    <button type="submit">검색</button>
                </form>
            </div>
        </div>
        <div class="topline">
        </div>
    </div>
</body>
</html>