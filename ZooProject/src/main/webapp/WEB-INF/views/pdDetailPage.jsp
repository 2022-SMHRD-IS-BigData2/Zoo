<%@page import="com.zoo.entity.ZooBoard"%>
<%@page import="com.zoo.entity.ZooProductList"%>
<%@page import="java.util.List"%>
<%@page import="com.zoo.entity.ZooMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Need Help?">
    <meta name="description" content="">
    <title>pdDetailPage</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/pdDetailPage.css" media="screen">
    <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.2.0, nicepage.com">
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
    <meta name="twitter:title" content="pdDetailPage">
    <meta name="twitter:description" content="Site1">
    <meta property="og:title" content="pdDetailPage">
    <meta property="og:type" content="website">
    <meta charset="UTF-8">
    <title>Sample Payment</title>
    
  </head>
  <% ZooMember user = (ZooMember)session.getAttribute("user"); %>
  
  <%List<ZooBoard> list= (List<ZooBoard>)session.getAttribute("dlist");
  double avg = 0;
  for( ZooBoard board : list){
     avg += board.getRe_score();
  }
  avg = avg / list.size();
  %>
  <% ZooProductList detail = (ZooProductList)session.getAttribute("detail"); %>
  
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
          <div class="u-custom-menu u-nav-container"style="
    position: relative;
    left: 550px;
">
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-5"><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">상품 카테고리</a>
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
    <section class="u-clearfix u-section-1" id="sec-ba9d">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <img class="u-image u-image-1" src="<%=detail.getProd_main_img()%>" data-image-width="548" data-image-height="548">
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <div class="u-container-style u-grey-10 u-group u-radius-10 u-shape-round u-group-1">
                    <div class="u-container-layout u-container-layout-3">
                      <p class="u-small-text u-text u-text-default u-text-variant u-text-1">사회적<span style="font-size: 0.875rem;"></span>기업
                      </p>
                    </div>
                  </div>
                  <h4 class="u-text u-text-2"> <%=detail.getProd_name()%></h4>
                  <div class="u-clearfix u-group-elements u-group-elements-1">
                    <h6 class="u-text u-text-default u-text-palette-5-dark-2 u-text-3">상품번호 </h6>
                    <h6 class="u-text u-text-palette-5-dark-2 u-text-4"> <%=detail.getProd_id() %> </h6>
                  </div>
                  <div class="u-clearfix u-group-elements u-group-elements-2">
                    <h6 class="u-text u-text-default u-text-grey-80 u-text-5">판매<span style="font-weight: 700;"></span>가
                    </h6>
                    <h6 class="u-text u-text-grey-80 u-text-6"><%=detail.getProd_price() %></h6>
                  </div>
                  <div class="u-clearfix u-group-elements u-group-elements-3">
                    <h6 class="u-text u-text-default u-text-grey-80 u-text-7">제조사</h6>
                    <h6 class="u-text u-text-grey-80 u-text-8">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<%=detail.getMaker_id() %></h6>
                  </div>
                  <div class="u-border-1 u-border-grey-40 u-container-style u-group u-palette-5-light-3 u-group-2">
                    <div class="u-container-layout u-container-layout-4">
                      <div class="u-container-style u-group u-shape-rectangle u-group-3">
                        <div class="u-container-layout">
                          <div class="u-align-center u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-4">
                            <div class="u-container-layout">
                              <p class="u-align-center u-text u-text-9">1</p>
                            </div>
                          </div>
                          <div class="u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-5">
                            <div class="u-container-layout u-container-layout-7"><span class="u-align-left u-file-icon u-icon u-icon-1"><img src="images/up_arrow1.png" alt=""></span>
                            </div>
                          </div>
                          <div class="u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-6">
                            <div class="u-container-layout u-container-layout-8"><span class="u-align-left u-file-icon u-icon u-icon-2"><img src="images/down_arrow1.png" alt=""></span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <h6 class="u-align-right u-text u-text-grey-80 u-text-10"></h6>
                      <h4 class="u-text u-text-default u-text-11"> 빠지는 죽 늙은호박 1박스 (150g*14ea)</h4>

                      <!-- 사이드 쪽  -->
                      <h6 class="u-align-right u-text u-text-grey-80 u-text-10"></h6>
                      <h4 class="u-text u-text-default u-text-11"> <%=detail.getProd_name() %></h4>

                      
                    </div>
                  </div>
                  <div class="u-clearfix u-group-elements u-group-elements-4">
                    <h6 class="u-align-right u-text u-text-grey-80 u-text-12"><%=detail.getProd_price() %>원</h6>
                    <h6 class="u-text u-text-default u-text-grey-80 u-text-13">합계금액</h6>
                  </div>
                  <div class="u-clearfix u-group-elements u-group-elements-5">
                   
                   
                    <a href="#" class="u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-custom-color-2 u-palette-4-dark-1 u-radius-6 u-text-hover-white u-btn-1">바로 구매</a>
                    <a onclick="alert('장바구니로 이동')" href="gocartform.do?prod_id=<%=detail.getProd_id() %>" class="u-align-center u-border-2 u-border-hover-palette-4-dark-2 u-border-palette-4-dark-2 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-2">장바구니</a>
                    <a onclick="alert('관심상품등록 완료')" href="gowishListform.do" class="u-border-2 u-border-hover-palette-4-dark-2 u-border-palette-4-dark-2 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-3">관심상품</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-2708">
      <div class="u-clearfix u-sheet u-sheet-1"style="
    min-height: 100%;
">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-43 u-layout-cell-1"style="
    min-height: 100%;
">
                <div class="u-container-layout u-container-layout-1">
                  <div class="u-border-1 u-border-grey-40 u-line u-line-horizontal u-line-1"></div>
                  
                  <div><a href="#detail" class="u-border-2 u-border-hover-palette-4-light-3 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-1">상세설명</a>
                  <a href="#review" class="u-border-2 u-border-hover-palette-4-light-3 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-2">구매후기 ( <%= list.size() %> ) </a>
                  <a href="#Qbuy" class="u-border-2 u-border-hover-palette-4-light-3 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-3">구매문의 ( 1 )</a>
                  <a href="https://nicepage.com/c/contact-form-html-templates" class="u-border-2 u-border-hover-palette-4-light-3 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-4">상품구매안내</a>
                  </div>
                  
                  <div class="u-border-1 u-border-grey-40 u-line u-line-horizontal u-line-2">
                  <img class="u-image u-image-default u-image-1" src="<%=detail.getProd_img() %>" id="detail" alt="" data-image-width="1000" data-image-height="9587">
                </div>
                
              </div>
              <div class="u-container-style u-layout-cell u-size-17 u-layout-cell-2"style="
    min-height: 100%;
">
                <div class="u-border-1 u-border-grey-40 u-container-layout u-container-layout-2">
                  <div class="u-container-style u-group u-white u-group-1" id="stickybox">
                    <div class="u-container-layout u-container-layout-3">
                      <div class="u-clearfix u-group-elements u-group-elements-1">
                        <h6 class="u-text u-text-default u-text-palette-5-dark-2 u-text-1">상품번호 </h6>
                        <h6 class="u-text u-text-palette-5-dark-2 u-text-2"> <%=detail.getProd_id() %> </h6>
                      </div>
                      <h4 class="u-text u-text-3"> <%=detail.getProd_name() %></h4>
                      <div class="u-clearfix u-group-elements u-group-elements-2">
                        <h6 class="u-text u-text-default u-text-grey-80 u-text-4">판매<span style="font-weight: 700;"></span>가
                        </h6>
                        <h6 class="u-align-right u-text u-text-grey-80 u-text-5"><%=detail.getProd_price() %>원</h6>
                      </div>
                      <div class="u-border-1 u-border-grey-40 u-container-style u-group u-palette-5-light-3 u-group-2">
                        <div class="u-container-layout u-container-layout-4">
                          <h4 class="u-text u-text-6"> <%=detail.getProd_name() %></h4>
                          <div class="u-container-style u-group u-shape-rectangle u-group-3">
                            <div class="u-container-layout">
                              <div class="u-align-center u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-4">
                                <div class="u-container-layout">
                                  <p class="u-align-center u-text u-text-7">1</p>
                                </div>
                              </div>
                              <div class="u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-5">
                                <div class="u-container-layout u-container-layout-7"><span class="u-align-left u-file-icon u-icon u-icon-1"><img src="images/my_arrow_left.png" alt=""></span>
                                </div>
                              </div>
                              <div class="u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-6">
                                <div class="u-container-layout u-container-layout-8"><span class="u-align-left u-file-icon u-icon u-icon-2"><img src="images/my_arrow_right.png" alt=""></span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <h6 class="u-align-right u-text u-text-grey-80 u-text-8"><%=detail.getProd_price() %>원</h6>
                        </div>
                      </div>
                      <div class="u-clearfix u-group-elements u-group-elements-3">
                        <h6 class="u-align-right u-text u-text-grey-80 u-text-9"><%=detail.getProd_price() %>원</h6>
                        <h6 class="u-text u-text-default u-text-grey-80 u-text-10">합계금액</h6>
                      </div>
                      <a onclick="alert('결제창 이동')" href="#" class="u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-custom-color-2 u-palette-4-dark-1 u-radius-6 u-text-hover-white u-btn-5">바로 구매</a>
                      <a onclick="alert('장바구니로 이동')" href="gocartform.do?prod_id=<%=detail.getProd_id() %>" class="u-border-2 u-border-hover-palette-4-dark-2 u-border-palette-4-dark-2 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-6">장바구니</a>
                      <a onclick="alert('관심상품등록완료')" href="gowishListform.do" class="u-border-2 u-border-hover-palette-4-dark-2 u-border-palette-4-dark-2 u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius-6 u-text-hover-black u-white u-btn-7">관심상품</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-3" id="sec-2091">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
            &nbsp;
            &nbsp;
              <div class="u-container-style u-layout-cell u-size-43 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h6 class="u-text u-text-default u-text-1" id="review">구매후기 ( <%= list.size() %> ) ★ <%=avg %></h6>
                  <% for (ZooBoard board : list) { 
                	  int j = 1;
                  %>
                  <div class="u-border-1 u-border-grey-40 u-expanded-width u-line u-line-horizontal u-line-<%= j%>"></div>
                  <% j=j+1; %>
                  <h5 class="u-text u-text-default u-text-palette-3-base u-text-<%=j%>"> ★ <%=board.getRe_score() %></h5>
                  <% j=j+1; %>
                  <h6 class="u-text u-text-default u-text-<%= j%>"><%=board.getCust_id() %></h6>
                  <% j=j+1; %>
                  <h6 class="u-text u-text-default u-text-<%= j%>"><%=board.getRe_dt() %></h6>
                  <% j=j+1; %>
                  <h6 class="u-text u-text-default u-text-<%= j%>"><%=board.getRe_title() %></h6>
                  	<% } %>
                  <div class="u-border-1 u-border-grey-40 u-expanded-width u-line u-line-horizontal u-line-2"></div>
                  <div class="u-align-center u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-1">
                    <div class="u-container-layout">
                      <p class="u-align-center u-text u-text-6">1</p>
                    </div>
                  </div>
                  <div class="u-clearfix u-group-elements u-group-elements-1">
                    <a href="viewReviewPage.do" class="u-border-2 u-border-hover-palette-5-dark-2 u-border-palette-5-dark-2 u-btn u-button-style u-hover-grey-5 u-none u-text-black u-btn-1">상품후기 전체보기</a>
                    <a href="writeReviewPage.do" class="u-border-2 u-border-hover-palette-5-dark-2 u-border-palette-5-dark-2 u-btn u-button-style u-hover-grey-5 u-none u-text-black u-text-hover-black u-btn-2">상품후기 글쓰기</a>
                  </div>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-shape-rectangle u-size-17 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-3"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-4" id="sec-68ba">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-43 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h6 class="u-text u-text-default u-text-1" id="Qbuy">구매문의 ( 1 )</h6>
                  <div class="u-border-1 u-border-grey-40 u-expanded-width u-line u-line-horizontal u-line-1"></div>
                  <h5 class="u-text u-text-default u-text-palette-5-dark-2 u-text-2">문의글</h5>
                  <h6 class="u-text u-text-default u-text-3">배송이 3일째 안와요..</h6>
                  <h6 class="u-text u-text-default u-text-4">이우* </h6>
                  <h6 class="u-text u-text-default u-text-5">2022.12.24</h6>
                  <div class="u-border-1 u-border-grey-40 u-expanded-width u-line u-line-horizontal u-line-2"></div>
                  <div class="u-align-center u-border-1 u-border-palette-5-light-1 u-container-style u-group u-group-1">
                    <div class="u-container-layout">
                      <p class="u-align-center u-text u-text-6">1</p>
                    </div>
                  </div>
                  <div class="u-clearfix u-group-elements u-group-elements-1">
                    <a href="https://nicepage.com/one-page-template" class="u-border-2 u-border-hover-palette-5-dark-2 u-border-palette-5-dark-2 u-btn u-button-style u-hover-grey-5 u-none u-text-black u-btn-1">상품문의 전체보기</a>
                    <a href="https://nicepage.com/one-page-template" class="u-border-2 u-border-hover-palette-5-dark-2 u-border-palette-5-dark-2 u-btn u-button-style u-hover-grey-5 u-none u-text-black u-text-hover-black u-btn-2">상품문의 글쓰기</a>
                  </div>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-shape-rectangle u-size-17 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-3"></div>
              </div>
            </div>
          </div>
        </div>
        <a href="#sec-d939" class="u-border-none u-btn u-btn-round u-button-style u-palette-4-dark-1 u-radius-50 u-btn-3">UP</a>
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
        <a href="mainPage.html" class="u-image u-logo u-image-1" data-image-width="342" data-image-height="200" title="메인페이지">
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
    </section>
  
</body></html>