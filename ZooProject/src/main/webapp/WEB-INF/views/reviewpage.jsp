<%@page import="com.zoo.entity.ZooBoard"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="com.zoo.entity.ZooProductList"%>
<%@page import="com.zoo.entity.ZooMember"%>
<%@page import="java.lang.reflect.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Online University of
In-Demand Professions, ​Top ten most popular courses for international students, ​What Is a Life Coach?, ​Leader in Executive Education, ​Flexible Distance Learning, ​Need Help?">
    <meta name="description" content="">
    <title>mainPage</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/mainPage.css" media="screen">
    <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.1.5, nicepage.com">
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
    <meta name="twitter:title" content="mainPage">
    <meta name="twitter:description" content="Site1">
    <meta property="og:title" content="mainPage">
    <meta property="og:type" content="website">
  </head>
  <%   
  ZooMember user = (ZooMember)session.getAttribute("user");
  if(user != null){
  	System.out.print(user.getCust_id());
  }
  ZooProductList dto = new ZooProductList();
 List<ZooBoard> list= (List<ZooBoard>)session.getAttribute("dlist");
  List<ZooProductList> pdlist_budget = (List<ZooProductList>)session.getAttribute("pdlist_budget");
  List<ZooProductList> pdlist_gift = (List<ZooProductList>)session.getAttribute("pdlist_gift");
   List<ZooProductList> pdlist =(List<ZooProductList>)session.getAttribute("list"); 
  %>
  
  
  <body class="u-body u-xl-mode" data-lang="en">
  <header class="u-clearfix u-gradient u-header u-header" id="sec-d939" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
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
        <ul class="u-nav u-unstyled u-nav-1"style="
    position: relative;
    left: 300px;
"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gologin.do">로그인</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gojoin.do">회원가입</a>
</li>
</ul>
</div>
<form action="gosearchform.do" method="get" class="u-border-1 u-border-grey-30 u-search u-search-right u-white u-search-1" style="
    position: relative;
    right: 550px;
">
          <button class="u-search-button" type="submit">
            <span class="u-search-icon u-spacing-10 u-search-icon-1">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-762a"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-762a" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
            </span>
          </button>
          <input class="u-search-input" type="search" name="search" value="" placeholder="Search">
        </form>
        <a href="gomainpage.do" class="u-image u-logo u-image-1" data-image-width="342" data-image-height="200"  title="메인페이지" style="
    position: relative;
    right: 400px;
">
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
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-5" style="
    position: relative;
    left: 400px;
    top: -45px;
"><ul class="u-nav u-spacing-30 u-unstyled u-nav-5"><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">상품 카테고리</a>
            <div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=식품">🍴 식품</a>
            <div class="u-nav-popup"style="
    left: 137px;
    top: 0px;
">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=농산물">농산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=축산물">축산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=수산물">수산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=간식">떡·쿠키·간식</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=음료">커피·차·음료</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=건강식품">건강식품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=반찬/밀키트">김치·반찬·밀키트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=양념/소스">양념·소스·장류</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=생활용품">🛒 생활용품</a>
<div class="u-nav-popup"style="left: 137px; top: 0px;">
<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=방역">방역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=홈데코">홈데코</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=뷰티">세안·뷰티</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=유아용품">유아용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=주방용품">주방용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=청소세탁용폼">청소·세탁용품</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistkeyword.do?keyword=ECO">🌳 친환경</a> <!-- 친환경 href 예외처리 (김원경) -->
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=패션">👕 패션/잡화</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=헬스건강">💪🏻 헬스·건강</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=가구">🪑 가구</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">기업유형</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=A">(예비)사회적기업</a>
</li>
	<li class="u-nav-item">
	<a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=B">협동조합</a>
</li>
	<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=C">마을기업</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=D">장애인기업</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=E">여성기업</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=F">자활기업</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">게시판</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="">공지사항</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=review">리뷰게시판</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=qna">문의게시판</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="godonation.do" style="padding: 10px 48px;">기부</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;"href="goaboutNanuform.do">ABOUT - 나누민족</a>
</li></ul>
          </div>


<%}else{ %>
<div class="u-custom-menu u-nav-container">
<ul class="u-nav u-unstyled u-nav-1">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gomyPageform.do"><%=user.getCust_name() %></a>

</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="logout.do">로그아웃</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;"href="gomyPageform.do">주문조회</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" href="gocartform.do" style="padding: 14px 10px;">장바구니</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" href="gomyPageform.do" style="padding: 14px 10px;">마이페이지</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gomyPageform.do">주문 내역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gowishList.do">위시리스트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="goboardform.do">게시글</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gomemberUpdate.do">정보 수정</a>
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
        
        <form action="gosearchform.do" method="get" class="u-border-1 u-border-grey-30 u-search u-search-right u-white u-search-1">
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
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-5" style="
    position: relative;
    left: 400px;
    top: -45px;
"><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">상품 카테고리</a>
            <div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=식품">🍴 식품</a>
            <div class="u-nav-popup"style="
    left: 137px;
    top: 0px;
">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=농산물">농산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=축산물">축산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=수산물">수산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=간식">떡·쿠키·간식</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=음료">커피·차·음료</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=건강식품">건강식품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=반찬/밀키트">김치·반찬·밀키트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=양념/소스">양념·소스·장류</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=생활용품">🛒 생활용품</a>
<div class="u-nav-popup"style="
    left: 137px;
    top: 0px;
">
<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=방역">방역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=홈데코">홈데코</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=뷰티">세안·뷰티</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=유아용품">유아용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=주방용품">주방용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=청소세탁용폼">청소·세탁용품</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistkeyword.do?keyword=ECO">🌳 친환경</a> <!-- 친환경 href 예외처리 (김원경) -->
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=패션">👕 패션/잡화</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=헬스건강">💪🏻 헬스·건강</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=가구">🪑 가구</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">기업유형</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=A">(예비)사회적기업</a>
</li>
	<li class="u-nav-item">
	<a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=B">협동조합</a>
</li>
	<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=C">마을기업</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=D">장애인기업</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=E">여성기업</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=F">자활기업</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">게시판</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="">공지사항</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=review">리뷰게시판</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=qna">문의게시판</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="godonation.do" style="padding: 10px 48px;">기부</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;"href="goaboutNanuform.do">ABOUT - 나누민족</a>
</li></ul>
          </div><%} %>
          
          
          
          
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-9"><li class="u-nav-item"><a class="u-button-style u-nav-link">상품 카테고리</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item">
                <a class="u-button-style u-nav-link" href="gofoodform.do?category=식품">🍴 식품</a>
                <div class="u-nav-popup">
                <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=농산물">농산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=축산물">축산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=수산물">수산물</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=간식">떡·쿠키·간식</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=음료">커피·차·음료</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=건강식품">건강식품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=반찬/밀키트">김치·반찬·밀키트</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=양념/소스">양념·소스·장류</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=생활용품">🛒 생활용품</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">방역</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=홈데코">홈데코</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=뷰티">세안·뷰티</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=유아용품">유아용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=주방용품">주방용품</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category2=청소세탁용품">청소·세탁용품</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gopdlistkeyword.do?keyword=친환경">🌳 친환경</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=패션">👕 패션/잡화</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=헬스건강">💪🏻 헬스·건강</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=꽃/화훼">🌼 꽃·화훼</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=가구">🪑 가구</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">기업유형</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=board">게시판</a>
<div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
<li class="u-nav-item"><a class="u-button-style u-nav-link">공지사항</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=review">리뷰게시판</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=qna">문의사항</a>
</li></ul>
</div> 
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="">기부</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">ABOUT - 나누민족</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </header>
    <section class="u-align-center u-clearfix u-section-1" id="sec-fcf5">
      <style data-mode="XXL">@media (max-width: 0px) {
  .u-section-1 .u-gallery-1 {
    min-height: 613px;
  }
  .u-section-1 .u-carousel-item-2 {
    width: 758px;
    min-height: 478px;
    height: auto;
    margin-top: 60px;
    margin-bottom: 60px;
    margin-left: auto;
    margin-right: auto;
  }
  .u-section-1 .u-back-slide-2 {
    position: absolute;
    bottom: 10px;
    width: auto;
    height: auto;
  }
  .u-block-04ba-25 {
    background-image: linear-gradient(0deg, rgba(0,0,0,0.4), rgba(0,0,0,0.4)), url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJkZWZhdWx0LWltYWdlLXNvbGlkIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNDAwIDI2NSIgc3R5bGU9IndpZHRoOiA0MDBweDsgaGVpZ2h0OiAyNjVweDsiPg0KPHJlY3QgZmlsbD0iI0M2RDhFMSIgd2lkdGg9IjQwMCIgaGVpZ2h0PSIyNjUiLz4NCjxwYXRoIGZpbGw9IiNEOUUzRTgiIGQ9Ik0zOTUuMyw5Ni4yYy01LTAuOC02LjEsMS4xLTguNSwyLjljLTEtMi4zLTIuNi02LjItNy43LTVjMS41LTUuMy0yLjYtOC40LTcuNy04LjRjLTAuNiwwLTEuMiwwLjEtMS44LDAuMg0KCWMtMS44LTQuMS02LTYuOS0xMC43LTYuOWMtNi41LDAtMTEuOCw1LjMtMTEuOCwxMS44YzAsMC40LDAsMC45LDAuMSwxLjNjLTEuMi0wLjgtMi41LTEuMy0zLjktMS4zYy00LjMsMC03LjksNC4yLTcuOSw5LjQNCgljMCwxLjIsMC4yLDIuNCwwLjYsMy41Yy0wLjUtMC4xLTEtMC4xLTEuNi0wLjFjLTYuOSwwLTEyLjUsNS41LTEyLjcsMTIuNGMtMC45LTAuMi0xLjktMC40LTIuOS0wLjRjLTYuNCwwLTExLjcsNS4yLTEyLjUsMTEuOA0KCWMtMS4yLTAuNC0yLjUtMC42LTMuOS0wLjZjLTUuOSwwLTEwLjgsMy44LTEyLjEsOC45Yy0yLjQtMi01LjUtMy4yLTguOS0zLjJjLTYsMC0xMS4xLDMuNy0xMi44LDguOGMtMS41LTEuNC0zLjgtMi4zLTYuMy0yLjMNCgljLTIuMSwwLTQuMSwwLjYtNS41LDEuN2gtMC4xYy0xLjMtNS41LTYuMi05LjUtMTIuMS05LjVjLTIuNCwwLTQuNywwLjctNi42LDEuOWMtMS40LTAuNy0zLTEuMi00LjgtMS4yYy0wLjMsMC0wLjUsMC0wLjgsMA0KCWMtMS41LTQuMS01LjItNy05LjUtN2MtMy4xLDAtNS45LDEuNS03LjgsMy45Yy0yLjItNC44LTYuOC04LjItMTIuMi04LjJjLTUuNiwwLTEwLjUsMy43LTEyLjUsOC44Yy0yLjEtMC45LTQuNC0xLjUtNi45LTEuNQ0KCWMtNi44LDAtMTIuNSwzLjktMTQuNSw5LjNjLTAuMiwwLTAuNSwwLTAuNywwYy01LjIsMC05LjYsMy4yLTExLjQsNy44Yy0yLjctMi44LTctNC41LTExLjgtNC41Yy0zLjMsMC02LjQsMC45LTguOSwyLjMNCgljLTIuMS02LjUtOC0xMi4yLTE4LjEtOS45Yy0yLjctMi4zLTYuMy0zLjctMTAuMS0zLjdjLTIuNSwwLTQuOCwwLjYtNi45LDEuNmMtMi4yLTUuOS03LjktMTAuMS0xNC42LTEwLjFjLTguNiwwLTE1LjYsNy0xNS42LDE1LjYNCgljMCwwLjksMC4xLDEuNywwLjIsMi41Yy0yLjYtNS03LjgtOC40LTEzLjgtOC40Yy04LjMsMC0xNS4xLDYuNS0xNS42LDE0LjZjLTIuOS0zLjItNy01LjMtMTEuNy01LjNjLTcuNCwwLTEzLjUsNS4xLTE1LjIsMTINCgljLTIuOS0zLjUtOS44LTYtMTQuNy02djExOS4yaDQwMFYxMDJDNDAwLDEwMiw0MDAsOTcsMzk1LjMsOTYuMnoiLz4NCjxwYXRoIGZpbGw9IiM4RUE4QkIiIGQ9Ik00MDAsMjA2LjJjMCwwLTI1LjMtMTkuMi0zMy42LTI1LjdjLTEzLjQtMTAuNi0yMy4xLTEyLjktMzEuNy03cy0yMy45LDE5LjctMjMuOSwxOS43cy01OC45LTYzLjktNjEuNS02Ni40DQoJYy0xLjUtMS40LTMuNi0xLjctNS41LTAuOWMtNS4yLDIuNC0xNy42LDkuNy0yNC41LDEyLjdjLTYuOSwyLjktNDEtNTAuNy00OS42LTUzcy04NC4zLDgzLjMtMTAxLjQsNzUuMXMtMjYuOS0yLjMtMzUuNCwzLjUNCgljLTguNiw1LjktMTEsNS45LTE1LjksOC4ycy0xNy4xLTUuOS0xNy4xLTUuOVYyNjVjMCwwLDQwMCwwLjIsNDAwLDB2LTU4LjhINDAweiIvPg0KPHBhdGggZmlsbD0iIzdFOTZBNiIgZD0iTTMzMy40LDE3OWMtMTMuMS05LjMtNDAsNC42LTU1LjEsMTAuN2MtMjMuNiw5LjYtOTQtNTQuNC0xMDcuMi01OS43YzAsMC00LjIsMy43LTkuNiw3LjYNCgljLTMuNS0wLjQtOC40LTUuNy05LjktNC43Yy00LjYsMy4xLTE3LjgsMTUuNC0yOC4zLDI2LjZjLTEwLjUsMTEuMy0xMS43LDAtMTUuOC0wLjZjLTIuNS0wLjQtNTQuMSw0Mi41LTU4LjcsNDMuMQ0KCUMyMi4zLDIwNS4zLDAsMTk3LjUsMCwxOTcuNVYyNjVsNDAwLTAuMXYtNTMuM0M0MDAsMjExLjYsMzQ0LjgsMTg3LjEsMzMzLjQsMTc5eiIvPg0KPHBhdGggZmlsbD0iIzc4OEY5RSIgZD0iTTAsMjY0Ljl2LTU4LjZjMCwwLDguMiwxLjgsMTEuMyw1LjNjMy4xLDMuNiwyNi4xLTQuMiwyNi4xLDQuN3MwLjUsNC4yLDAuNSwxNC44YzAsMTAuNywyMy00LjIsMzguMS0xOC40DQoJczM0LjktNDkuMiwzNi0zNWMxLDE0LjItMTUuMSwzOS4yLTI0LDU2LjRDNzkuMSwyNTEuNCw1MS43LDI2NSw1MS43LDI2NUwwLDI2NC45eiIvPg0KPHBhdGggZmlsbD0iIzc4OEY5RSIgZD0iTTEwMCwyNjVjMCwwLDY2LjctMTI1LjEsNjguMy0xMTYuOHMtNi44LDI5LjcsMi4xLDI2LjFjOC45LTMuNiwxNC42LTE2LDE4LjgtOS41czE2LjIsMzguNiwyMS45LDMzLjgNCgljNS43LTQuNywyMS40LTEzLjEsMjIuNC02LjVjMSw2LjUtMSw1LjMtNS43LDIwLjJDMjIzLjEsMjI3LjEsMjAwLDI2NSwyMDAsMjY1aC0xMGMwLDAsNi0yNC44LDguNi0zNC45YzIuNi0xMC4xLTMuNy0xOS0xMi04LjMNCglzLTIzLDIyLTI0LDE3LjhzLTUuNy0zMC4zLTE4LjgtMTQuMmMtMTMsMTYtMzMuOCwzOS43LTMzLjgsMzkuN2gtMTBWMjY1eiIvPg0KPHBhdGggZmlsbD0iIzc4OEY5RSIgZD0iTTI0NSwyNjVjMCwwLDE5LjgtNTQuNywzMy40LTY0LjJzNTMuNy0yNy45LDQ2LjktMTMuNmMtNi44LDE0LjItMTEsMzQuNC0yMC4zLDQ5LjgNCgljLTkuNCwxNS40LTE4LjgsMjYuMS0xNC4xLDEzLjZjNC43LTEyLjUsNi40LTIzLjMsMy43LTIzLjFDMjcxLjMsMjI5LjEsMjYwLDI2NSwyNjAsMjY1SDI0NXoiLz4NCjwvc3ZnPg0K");
    background-position: 50% 50%;
  }
  .u-block-04ba-26 {
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 60px;
    padding-right: 60px;
  }
  .u-block-04ba-32 {
    margin-top: 0;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
  }
  .u-block-04ba-33 {
    width: 409px;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-04ba-34 {
    border-style: none;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    background-image: none;
    margin-top: 30px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-04ba-35 {
    background-image: linear-gradient(0deg, rgba(0,0,0,0.4), rgba(0,0,0,0.4)), url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJkZWZhdWx0LWltYWdlLXNvbGlkIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNDAwIDI2NSIgc3R5bGU9IndpZHRoOiA0MDBweDsgaGVpZ2h0OiAyNjVweDsiPg0KPHJlY3QgZmlsbD0iI0M2RDhFMSIgd2lkdGg9IjQwMCIgaGVpZ2h0PSIyNjUiLz4NCjxwYXRoIGZpbGw9IiNEOUUzRTgiIGQ9Ik0zOTUuMyw5Ni4yYy01LTAuOC02LjEsMS4xLTguNSwyLjljLTEtMi4zLTIuNi02LjItNy43LTVjMS41LTUuMy0yLjYtOC40LTcuNy04LjRjLTAuNiwwLTEuMiwwLjEtMS44LDAuMg0KCWMtMS44LTQuMS02LTYuOS0xMC43LTYuOWMtNi41LDAtMTEuOCw1LjMtMTEuOCwxMS44YzAsMC40LDAsMC45LDAuMSwxLjNjLTEuMi0wLjgtMi41LTEuMy0zLjktMS4zYy00LjMsMC03LjksNC4yLTcuOSw5LjQNCgljMCwxLjIsMC4yLDIuNCwwLjYsMy41Yy0wLjUtMC4xLTEtMC4xLTEuNi0wLjFjLTYuOSwwLTEyLjUsNS41LTEyLjcsMTIuNGMtMC45LTAuMi0xLjktMC40LTIuOS0wLjRjLTYuNCwwLTExLjcsNS4yLTEyLjUsMTEuOA0KCWMtMS4yLTAuNC0yLjUtMC42LTMuOS0wLjZjLTUuOSwwLTEwLjgsMy44LTEyLjEsOC45Yy0yLjQtMi01LjUtMy4yLTguOS0zLjJjLTYsMC0xMS4xLDMuNy0xMi44LDguOGMtMS41LTEuNC0zLjgtMi4zLTYuMy0yLjMNCgljLTIuMSwwLTQuMSwwLjYtNS41LDEuN2gtMC4xYy0xLjMtNS41LTYuMi05LjUtMTIuMS05LjVjLTIuNCwwLTQuNywwLjctNi42LDEuOWMtMS40LTAuNy0zLTEuMi00LjgtMS4yYy0wLjMsMC0wLjUsMC0wLjgsMA0KCWMtMS41LTQuMS01LjItNy05LjUtN2MtMy4xLDAtNS45LDEuNS03LjgsMy45Yy0yLjItNC44LTYuOC04LjItMTIuMi04LjJjLTUuNiwwLTEwLjUsMy43LTEyLjUsOC44Yy0yLjEtMC45LTQuNC0xLjUtNi45LTEuNQ0KCWMtNi44LDAtMTIuNSwzLjktMTQuNSw5LjNjLTAuMiwwLTAuNSwwLTAuNywwYy01LjIsMC05LjYsMy4yLTExLjQsNy44Yy0yLjctMi44LTctNC41LTExLjgtNC41Yy0zLjMsMC02LjQsMC45LTguOSwyLjMNCgljLTIuMS02LjUtOC0xMi4yLTE4LjEtOS45Yy0yLjctMi4zLTYuMy0zLjctMTAuMS0zLjdjLTIuNSwwLTQuOCwwLjYtNi45LDEuNmMtMi4yLTUuOS03LjktMTAuMS0xNC42LTEwLjFjLTguNiwwLTE1LjYsNy0xNS42LDE1LjYNCgljMCwwLjksMC4xLDEuNywwLjIsMi41Yy0yLjYtNS03LjgtOC40LTEzLjgtOC40Yy04LjMsMC0xNS4xLDYuNS0xNS42LDE0LjZjLTIuOS0zLjItNy01LjMtMTEuNy01LjNjLTcuNCwwLTEzLjUsNS4xLTE1LjIsMTINCgljLTIuOS0zLjUtOS44LTYtMTQuNy02djExOS4yaDQwMFYxMDJDNDAwLDEwMiw0MDAsOTcsMzk1LjMsOTYuMnoiLz4NCjxwYXRoIGZpbGw9IiM4RUE4QkIiIGQ9Ik00MDAsMjA2LjJjMCwwLTI1LjMtMTkuMi0zMy42LTI1LjdjLTEzLjQtMTAuNi0yMy4xLTEyLjktMzEuNy03cy0yMy45LDE5LjctMjMuOSwxOS43cy01OC45LTYzLjktNjEuNS02Ni40DQoJYy0xLjUtMS40LTMuNi0xLjctNS41LTAuOWMtNS4yLDIuNC0xNy42LDkuNy0yNC41LDEyLjdjLTYuOSwyLjktNDEtNTAuNy00OS42LTUzcy04NC4zLDgzLjMtMTAxLjQsNzUuMXMtMjYuOS0yLjMtMzUuNCwzLjUNCgljLTguNiw1LjktMTEsNS45LTE1LjksOC4ycy0xNy4xLTUuOS0xNy4xLTUuOVYyNjVjMCwwLDQwMCwwLjIsNDAwLDB2LTU4LjhINDAweiIvPg0KPHBhdGggZmlsbD0iIzdFOTZBNiIgZD0iTTMzMy40LDE3OWMtMTMuMS05LjMtNDAsNC42LTU1LjEsMTAuN2MtMjMuNiw5LjYtOTQtNTQuNC0xMDcuMi01OS43YzAsMC00LjIsMy43LTkuNiw3LjYNCgljLTMuNS0wLjQtOC40LTUuNy05LjktNC43Yy00LjYsMy4xLTE3LjgsMTUuNC0yOC4zLDI2LjZjLTEwLjUsMTEuMy0xMS43LDAtMTUuOC0wLjZjLTIuNS0wLjQtNTQuMSw0Mi41LTU4LjcsNDMuMQ0KCUMyMi4zLDIwNS4zLDAsMTk3LjUsMCwxOTcuNVYyNjVsNDAwLTAuMXYtNTMuM0M0MDAsMjExLjYsMzQ0LjgsMTg3LjEsMzMzLjQsMTc5eiIvPg0KPHBhdGggZmlsbD0iIzc4OEY5RSIgZD0iTTAsMjY0Ljl2LTU4LjZjMCwwLDguMiwxLjgsMTEuMyw1LjNjMy4xLDMuNiwyNi4xLTQuMiwyNi4xLDQuN3MwLjUsNC4yLDAuNSwxNC44YzAsMTAuNywyMy00LjIsMzguMS0xOC40DQoJczM0LjktNDkuMiwzNi0zNWMxLDE0LjItMTUuMSwzOS4yLTI0LDU2LjRDNzkuMSwyNTEuNCw1MS43LDI2NSw1MS43LDI2NUwwLDI2NC45eiIvPg0KPHBhdGggZmlsbD0iIzc4OEY5RSIgZD0iTTEwMCwyNjVjMCwwLDY2LjctMTI1LjEsNjguMy0xMTYuOHMtNi44LDI5LjcsMi4xLDI2LjFjOC45LTMuNiwxNC42LTE2LDE4LjgtOS41czE2LjIsMzguNiwyMS45LDMzLjgNCgljNS43LTQuNywyMS40LTEzLjEsMjIuNC02LjVjMSw2LjUtMSw1LjMtNS43LDIwLjJDMjIzLjEsMjI3LjEsMjAwLDI2NSwyMDAsMjY1aC0xMGMwLDAsNi0yNC44LDguNi0zNC45YzIuNi0xMC4xLTMuNy0xOS0xMi04LjMNCglzLTIzLDIyLTI0LDE3LjhzLTUuNy0zMC4zLTE4LjgtMTQuMmMtMTMsMTYtMzMuOCwzOS43LTMzLjgsMzkuN2gtMTBWMjY1eiIvPg0KPHBhdGggZmlsbD0iIzc4OEY5RSIgZD0iTTI0NSwyNjVjMCwwLDE5LjgtNTQuNywzMy40LTY0LjJzNTMuNy0yNy45LDQ2LjktMTMuNmMtNi44LDE0LjItMTEsMzQuNC0yMC4zLDQ5LjgNCgljLTkuNCwxNS40LTE4LjgsMjYuMS0xNC4xLDEzLjZjNC43LTEyLjUsNi40LTIzLjMsMy43LTIzLjFDMjcxLjMsMjI5LjEsMjYwLDI2NSwyNjAsMjY1SDI0NXoiLz4NCjwvc3ZnPg0K");
    background-position: 50% 50%;
  }
  .u-block-04ba-36 {
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 60px;
    padding-right: 60px;
  }
  .u-block-04ba-37 {
    margin-top: 0;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
  }
  .u-block-04ba-38 {
    width: 409px;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-04ba-39 {
    border-style: none;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 0.875rem;
    letter-spacing: 1px;
    background-image: none;
    margin-top: 30px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-section-1 .u-over-slide-3 {
    width: 38px;
    height: 38px;
    background-image: none;
    left: -58px;
    position: absolute;
    right: auto;
  }
  .u-section-1 .u-back-image-1 {
    width: 38px;
    height: 38px;
    background-image: none;
    left: auto;
    position: absolute;
    right: -58px;
  }
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    margin: auto;
    text-align:center;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
}</style>
      <h6>리뷰 게시판</h6>
      <div>
				<table id="board">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>내용</td>
						<td>작성자</td>
						<td>시간</td>
					</tr>
					<%for( ZooBoard board : list ){ %>
					<tr>
						<td><%=board.getRe_seq() %></td>
						<td><%=board.getRe_title() %></td>
						<td><%=board.getRe_content() %></td>
						<td><%=board.getCust_id() %></td>
						<td><%=board.getRe_dt() %></td>
					</tr>
				<%} %>
				</table>
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
  
</body></html>