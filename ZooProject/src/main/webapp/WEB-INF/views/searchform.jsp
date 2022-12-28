<%@page import="com.zoo.entity.ZooMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Need Help?">
    <meta name="description" content="">
    <title>searchPage</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/searchPage.css" media="screen">
    <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.1.5, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"logo": "images/logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name",
				"https://instagram.com/name"
		]
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta name="twitter:site" content="@">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="searchPage">
    <meta name="twitter:description" content="Site1">
    <meta property="og:title" content="searchPage">
    <meta property="og:type" content="website">
  </head>
  <%ZooMember user =(ZooMember)session.getAttribute("user"); %>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-gradient u-header u-header" id="sec-d939" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
  <div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3fb7"></use></svg>
              <svg class="u-svg-content" version="1.1" id="svg-3fb7" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
          <%if(user==null){ %>
        <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gologin.do">로그인</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gojoin.do">회원가입</a><%}else{ %>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gomyPageform.do"><%=user.getCust_name() %></a>

</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="logout.do">로그아웃</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;"href="gomyPageform.do">주문조회</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" href="gocartform.do" style="padding: 14px 10px;">장바구니</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" href="gomyPageform.do" style="padding: 14px 10px;">마이페이지</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gomyPageform.do">주문 내역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gowishListform.do">위시리스트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="goboardform.do">게시글</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gomemberUpdate.do">정보 수정</a><%} %>
</li></ul>
</div>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link">로그인</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" >회원가입</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">주문조회</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">장바구니</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="">마이페이지</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">주문 내역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">위시리스트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">게시글</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" >정보 수정</a>
</li></ul>
</div>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        
        
        
        <form action="#" method="get" class="u-border-1 u-border-grey-30 u-search u-search-right u-white u-search-1">
          <button class="u-search-button" type="submit">
            <span class="u-search-icon u-spacing-10 u-search-icon-1">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-762a"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-762a" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
            </span>
          </button>
          <input class="u-search-input" type="search" name="search" value="" placeholder="Search">
        </form>
        <a href="gomainpage.do" class="u-image u-logo u-image-1" data-image-width="342" data-image-height="200"  title="메인페이지" >
          <img src="images/logo.png" class="u-logo-image u-logo-image-1" >
        </a>
        
        
        
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-2">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px; font-weight: 700; text-transform: uppercase;">
            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7445"></use></svg>
              <svg class="u-svg-content" version="1.1" id="svg-7445" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-5"><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">상품 카테고리</a>
            <div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=FOOD">🍴 식품</a>
            <div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=NS">농산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=CS">축산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=SS">수산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=SNACK">떡·쿠키·간식</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=DRINK">커피·차·음료</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=HFOOD">건강식품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=MK">김치·반찬·밀키트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=SOURCE">양념·소스·장류</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=LIVING">🛒 생활용품</a>
<div class="u-nav-popup">
<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=QT">방역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=DECO">홈데코</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=BEAU">세안·뷰티</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=BABY">유아용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=KITCH">주방용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=CLEAN">청소·세탁용품</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=ECO">🌳 친환경 (click X)</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=FASHION">👕 패션/잡화</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=HEALTH">💪🏻 헬스·건강</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=FLOWER">🌼 꽃·화훼</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=FUR">🪑 가구</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">인기상품</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">공지사항</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="godonation.do" style="padding: 10px 48px;">기부</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">ABOUT - 나누민족</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-9"><li class="u-nav-item"><a class="u-button-style u-nav-link">상품 카테고리</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item">
                <a class="u-button-style u-nav-link" href="gofoodform.do?category=FOOD">🍴 식품</a>
                <div class="u-nav-popup">
                <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=NS">농산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=CS">축산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=SS">수산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=SNACK">떡·쿠키·간식</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=DRINK">커피·차·음료</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=HEALTH">건강식품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=MK">김치·반찬·밀키트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=SOURCE">양념·소스·장류</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=LIVING">🛒 생활용품</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">방역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=DECO">홈데코</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=BEAU">세안·뷰티</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=BABY">유아용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=KITCH">주방용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=CLEAN">청소·세탁용품</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=ECO">🌳 친환경</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=FASHION">👕 패션/잡화</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=HEALTH">💪🏻 헬스·건강</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=FLOWER">🌼 꽃·화훼</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=FUR">🪑 가구</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">인기상품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">공지사항</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="">기부</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">ABOUT - 나누민족</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </header>
    <section class="u-clearfix u-section-1" id="sec-fdd9">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-left u-text u-text-1"><b>
            <span style="font-weight: 400;">Home &gt;</span> 상품검색</b>
        </p>
        <div class="u-border-3 u-border-palette-4-light-3 u-container-style u-custom-color-1 u-expanded-width u-group u-radius-20 u-shape-round u-group-1" data-animation-name="" data-animation-duration="0" data-animation-direction="">
          <div class="u-container-layout u-container-layout-1">
            <h6 class="u-text u-text-grey-70 u-text-2"><b>💡&nbsp; 키워드로 검색해보는건 어떠세​요?</b>
            </h6>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-1"># 간식</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-2"># 선물</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-3"># 천연</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-4"># 면역</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-5"># 유아</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-6"># 내몸을위한</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-7"> # 로컬푸드</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-8"># 못난이농산물</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-9"># 가성비</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-10"># 밀키트</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-11"># 친환경</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-12"># 필수템</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-2 u-border-palette-5-light-2 u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-light-3 u-radius-6 u-text-grey-70 u-text-hover-white u-btn-13"># 핸드메이드</a>
            <a href="https://nicepage.com/c/table-html-templates" class="u-border-1 u-border-grey-60 u-border-hover-grey-75 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-grey-70 u-text-hover-black u-top-left-radius-0 u-top-right-radius-0 u-btn-14"># 키워드 더 보기</a>
            <div class="u-border-1 u-border-palette-1-light-3 u-expanded-width u-line u-line-horizontal u-line-1"></div>
            <div class="u-form u-form-1">
              <form action="https://forms.nicepagesrv.com/Form/Process" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px;" source="email" name="form">
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" id="checkbox-a10d" name="(예비)사회적기업" value="On">
                  <label for="checkbox-a10d" class="u-label u-text-grey-70 u-label-1">(예비)사회적기업</label>
                </div>
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" placeholder="Name" id="name-6797" name="name" class="u-border-1 u-border-grey-30 u-input-rectangle" required="required" style="">
                  <label for="name-6797" class="u-label u-text-grey-70 u-label-2">협동조합</label>
                </div>
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" placeholder="Email" id="email-6797" name="email" class="u-border-1 u-border-grey-30 u-input-rectangle" required="required" style="">
                  <label for="email-6797" class="u-label u-text-grey-70 u-label-3">마을기업</label>
                </div>
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" id="checkbox-8f20" name="checkbox" value="On">
                  <label for="checkbox-8f20" class="u-label u-text-grey-70 u-label-4">장애인기업</label>
                </div>
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" id="checkbox-51ac" name="checkbox-1" value="On">
                  <label for="checkbox-51ac" class="u-label u-text-grey-70 u-label-5">여성기업</label>
                </div>
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" id="checkbox-2ba0" name="checkbox-3" value="On">
                  <label for="checkbox-2ba0" class="u-label u-text-grey-70 u-label-6">자활기업</label>
                </div>
                <div class="u-align-right u-form-group u-form-submit u-label-top">
                  <input type="submit" value="submit" class="u-form-control-hidden">
                  <a href="#" class="u-border-1 u-border-active-white u-border-hover-white u-border-no-left u-border-no-right u-border-no-top u-btn u-btn-submit u-button-style u-none u-text-active-white u-text-hover-white u-text-white u-btn-15">
                    <br>
                  </a>
                </div>
                <div class="u-form-send-message u-form-send-success">Thank you! Your message has been sent.</div>
                <div class="u-form-send-error u-form-send-message">Unable to send your message. Please fix errors then try again.</div>
                <input type="hidden" value="" name="recaptchaResponse">
                <input type="hidden" name="formServices" value="5246bc5fabddefcb36d8ad6fa376e624">
              </form>
            </div>
            <div class="display div inline-block u-clearfix u-custom-html u-custom-html-1">
              <div class="search" float:="" left;="">
                <input type="text" placeholder="검색어를 입력해주세요.">
                <button>검색</button>
              </div>
            </div>
          </div>
        </div>
        <div class="u-clearfix u-custom-html u-custom-html-2">
          <ul class="lineUp"> 정렬 &nbsp;&nbsp; <select name="lineUp" id="lineup" onchange="lineUp(81, this, '');">
              <option value="81" selected="selected">등록순</option>
              <option value="82">낮은가격순</option>
              <option value="83">높은가격순</option>
              <option value="84">인기순</option>
            </select>
          </ul>
        </div>
        <h6 class="u-text u-text-3"><b>30</b>개의 상품
        </h6>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-9565">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-list u-list-1">
              <div class="u-repeater u-repeater-1">
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-2">
                    <img class="u-image u-image-1" src="images/pd_1.jpg" data-image-width="1920" data-image-height="1406">
                    <h6 class="u-align-center u-text u-text-1"> 국내산 수제 쌀빵 4종&nbsp;<br>틔움긴생각<br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-2">2,500원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-3">
                    <img class="u-image u-image-2" src="images/pd_2.jpg" data-image-width="228" data-image-height="228">
                    <h6 class="u-align-center u-text u-text-3"> 다향
아로마 힐링
스프레이<br>
                      <span style="font-weight: 700;"></span>
                      <br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-4">20,000원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-4">
                    <img class="u-image u-image-3" src="images/pd_3.jpg" data-image-width="228" data-image-height="228">
                    <h6 class="u-align-center u-text u-text-5"> 패브릭섬유 향수<br>(100ml, 50ml)<span style="font-weight: 700;"></span>
                      <br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-6">10,000원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-5">
                    <img class="u-image u-image-4" src="images/pd_4.jpg" data-image-width="600" data-image-height="600">
                    <h6 class="u-align-center u-text u-text-7"> 마카롱꼬끄100%아몬드 가루&nbsp;<br>마카롱쿠키<br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-8">5,000원</h6>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-list u-list-2">
              <div class="u-repeater u-repeater-2">
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-6">
                    <img class="u-image u-image-5" src="images/pd_1.jpg" data-image-width="1920" data-image-height="1406">
                    <h6 class="u-align-center u-text u-text-9"> 국내산 수제 쌀빵 4종&nbsp;<br>틔움긴생각<br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-10">2,500원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-7">
                    <img class="u-image u-image-6" src="images/pd_2.jpg" data-image-width="228" data-image-height="228">
                    <h6 class="u-align-center u-text u-text-11"> 다향
아로마 힐링
스프레이<br>
                      <span style="font-weight: 700;"></span>
                      <br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-12">20,000원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-8">
                    <img class="u-image u-image-7" src="images/pd_3.jpg" data-image-width="228" data-image-height="228">
                    <h6 class="u-align-center u-text u-text-13"> 패브릭섬유 향수<br>(100ml, 50ml)<span style="font-weight: 700;"></span>
                      <br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-14">10,000원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-9">
                    <img class="u-image u-image-8" src="images/pd_4.jpg" data-image-width="600" data-image-height="600">
                    <h6 class="u-align-center u-text u-text-15"> 마카롱꼬끄100%아몬드 가루&nbsp;<br>마카롱쿠키<br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-16">5,000원</h6>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-list u-list-3">
              <div class="u-repeater u-repeater-3">
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-10">
                    <img class="u-image u-image-9" src="images/pd_1.jpg" data-image-width="1920" data-image-height="1406">
                    <h6 class="u-align-center u-text u-text-17"> 국내산 수제 쌀빵 4종&nbsp;<br>틔움긴생각<br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-18">2,500원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-11">
                    <img class="u-image u-image-10" src="images/pd_2.jpg" data-image-width="228" data-image-height="228">
                    <h6 class="u-align-center u-text u-text-19"> 다향
아로마 힐링
스프레이<br>
                      <span style="font-weight: 700;"></span>
                      <br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-20">20,000원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-12">
                    <img class="u-image u-image-11" src="images/pd_3.jpg" data-image-width="228" data-image-height="228">
                    <h6 class="u-align-center u-text u-text-21"> 패브릭섬유 향수<br>(100ml, 50ml)<span style="font-weight: 700;"></span>
                      <br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-22">10,000원</h6>
                  </div>
                </div>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-13">
                    <img class="u-image u-image-12" src="images/pd_4.jpg" data-image-width="600" data-image-height="600">
                    <h6 class="u-align-center u-text u-text-23"> 마카롱꼬끄100%아몬드 가루&nbsp;<br>마카롱쿠키<br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-24">5,000원</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="u-container-style u-group u-shape-rectangle u-group-2">
          <div class="u-container-layout u-container-layout-14">
            <div class="u-table u-table-responsive u-table-1">
              <table class="u-table-entity">
                <colgroup>
                  <col width="10.6%">
                  <col width="10.6%">
                  <col width="10.9%">
                  <col width="10.6%">
                  <col width="10.4%">
                  <col width="10.6%">
                  <col width="11.3%">
                  <col width="10.6%">
                  <col width="14.40000000000001%">
                </colgroup>
                <tbody class="u-align-center u-table-body u-text-grey-70 u-table-body-1">
                  <tr style="height: 26px;">
                    <td class="u-table-cell">1</td>
                    <td class="u-table-cell">2<br>
                    </td>
                    <td class="u-table-cell">3</td>
                    <td class="u-table-cell">4</td>
                    <td class="u-table-cell">5</td>
                    <td class="u-table-cell">6</td>
                    <td class="u-table-cell">7</td>
                    <td class="u-table-cell">8</td>
                    <td class="u-table-cell">9</td>
                  </tr>
                </tbody>
              </table>
            </div><span class="u-align-left u-file-icon u-icon u-icon-1"><img src="images/arrow_left.png" alt=""></span><span class="u-align-left u-file-icon u-icon u-icon-2"><img src="images/arrow_right.png" alt=""></span>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-gradient u-footer" id="sec-e204"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-social-icons u-spacing-10 u-social-icons-1">
          <a class="u-social-url" title="facebook" target="_blank" href="https://facebook.com/name"><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6c75"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-6c75"><path fill="currentColor" d="M75.5,28.8H65.4c-1.5,0-4,0.9-4,4.3v9.4h13.9l-1.5,15.8H61.4v45.1H42.8V58.3h-8.8V42.4h8.8V32.2
c0-7.4,3.4-18.8,18.8-18.8h13.8v15.4H75.5z"></path></svg></span>
          </a>
          <a class="u-social-url" title="twitter" target="_blank" href="https://twitter.com/name"><span class="u-icon u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-04cb"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-04cb"><path fill="currentColor" d="M92.2,38.2c0,0.8,0,1.6,0,2.3c0,24.3-18.6,52.4-52.6,52.4c-10.6,0.1-20.2-2.9-28.5-8.2
	c1.4,0.2,2.9,0.2,4.4,0.2c8.7,0,16.7-2.9,23-7.9c-8.1-0.2-14.9-5.5-17.3-12.8c1.1,0.2,2.4,0.2,3.4,0.2c1.6,0,3.3-0.2,4.8-0.7
	c-8.4-1.6-14.9-9.2-14.9-18c0-0.2,0-0.2,0-0.2c2.5,1.4,5.4,2.2,8.4,2.3c-5-3.3-8.3-8.9-8.3-15.4c0-3.4,1-6.5,2.5-9.2
	c9.1,11.1,22.7,18.5,38,19.2c-0.2-1.4-0.4-2.8-0.4-4.3c0.1-10,8.3-18.2,18.5-18.2c5.4,0,10.1,2.2,13.5,5.7c4.3-0.8,8.1-2.3,11.7-4.5
	c-1.4,4.3-4.3,7.9-8.1,10.1c3.7-0.4,7.3-1.4,10.6-2.9C98.9,32.3,95.7,35.5,92.2,38.2z"></path></svg></span>
          </a>
          <a class="u-social-url" title="instagram" target="_blank" href="https://instagram.com/name"><span class="u-icon u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7561"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-7561"><path fill="currentColor" d="M55.9,32.9c-12.8,0-23.2,10.4-23.2,23.2s10.4,23.2,23.2,23.2s23.2-10.4,23.2-23.2S68.7,32.9,55.9,32.9z
	 M55.9,69.4c-7.4,0-13.3-6-13.3-13.3c-0.1-7.4,6-13.3,13.3-13.3s13.3,6,13.3,13.3C69.3,63.5,63.3,69.4,55.9,69.4z"></path><path fill="#FFFFFF" d="M79.7,26.8c-3,0-5.4,2.5-5.4,5.4s2.5,5.4,5.4,5.4c3,0,5.4-2.5,5.4-5.4S82.7,26.8,79.7,26.8z"></path><path fill="currentColor" d="M78.2,11H33.5C21,11,10.8,21.3,10.8,33.7v44.7c0,12.6,10.2,22.8,22.7,22.8h44.7c12.6,0,22.7-10.2,22.7-22.7
	V33.7C100.8,21.1,90.6,11,78.2,11z M91,78.4c0,7.1-5.8,12.8-12.8,12.8H33.5c-7.1,0-12.8-5.8-12.8-12.8V33.7
	c0-7.1,5.8-12.8,12.8-12.8h44.7c7.1,0,12.8,5.8,12.8,12.8V78.4z"></path></svg></span>
          </a>
        </div>
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6afa"></use></svg>
              <svg class="u-svg-content" version="1.1" id="svg-6afa" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">이용약관</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">개인정보 처리방침</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">공지사항</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">고객센터</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link">이용약관</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">개인정보 처리방침</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">공지사항</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">고객센터</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="gomainpage.do" class="u-image u-logo u-image-1" data-image-width="342" data-image-height="200" title="메인페이지">
          <img src="images/logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <p class="u-align-left u-text u-text-1">
          <span style="font-weight: 700;">상호명</span>&nbsp; &nbsp;나누민족&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-weight: 700;">대표자명</span>&nbsp; 문승주&nbsp;&nbsp;<br>
          <span style="font-weight: 700;">사업장 주소&nbsp;</span> &nbsp; &nbsp; 광주광역시 남구 송암로 60(송하동 373-3)&nbsp;<br>
          <span style="font-weight: 700;">대표전화</span>&nbsp; &nbsp;062-610-2400 &nbsp;&nbsp;<span style="font-weight: 700;">FAX</span>&nbsp; &nbsp; &nbsp;062-671-2450
        </p>
        <p class="u-align-left u-text u-text-2"><b>나누민족은 광주·전남 사회적경제쇼핑몰 입니다.</b>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  
</body></html>