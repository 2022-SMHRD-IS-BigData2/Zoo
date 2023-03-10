<%@page import="java.util.List"%>
<%@page import="com.zoo.entity.ZooProductList"%>
<%@page import="com.zoo.entity.ZooMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>productPage<% %></title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/foodPage.css" media="screen">
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
    <meta name="twitter:title" content="foodPage">
    <meta name="twitter:description" content="Site1">
    <meta property="og:title" content="foodPage">
    <meta property="og:type" content="website">
  </head>
  <% ZooMember user = (ZooMember)session.getAttribute("user"); %>

  <% List<ZooProductList> pdlist =(List<ZooProductList>)session.getAttribute("list"); %>

  <% String seller = (String)request.getAttribute("seller"); %>
  <% String category2 = (String)request.getAttribute("category2"); %>
  <% String keywordEco = (String)request.getAttribute("keywordEco"); %>
  
  
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
        <ul class="u-nav u-unstyled u-nav-1"style="
    position: relative;
    left: 550px;
">
        <li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gologin.do">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gojoin.do">????????????</a>
</li>
</ul>
</div>
<form action="#" method="get" class="u-border-1 u-border-grey-30 u-search u-search-right u-white u-search-1"style="
    position: relative;
    right: 400px;>
          <button class="u-search-button" type="submit">
            <span class="u-search-icon u-spacing-10 u-search-icon-1">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-762a"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-762a" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
            </span>
          </button>
          <input class="u-search-input" type="search" name="search" value="" placeholder="Search"
">
        </form>
        <a href="gomainpage.do" class="u-image u-logo u-image-1" data-image-width="342" data-image-height="200"  title="???????????????" style="
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
          <div class="u-custom-menu u-nav-container"style="
    position: relative;
    top: -40px;
    left: 550px;
">
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-5"><li class="u-nav-item">
            <a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">?????? ????????????</a>
            
            <!-- ???????????? ?????? ???????????? ?????? -->
            <div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=??????">???? ??????</a>
            <div class="u-nav-popup"style="
    left: 137px;
    top: 0px;
">
           <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">???????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">???????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=????????????">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????/?????????">?????????????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????/??????">??????????????????????</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=????????????">???? ????????????</a>
<div class="u-nav-popup"style="left: 137px; top: 0px;">
<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">??????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=????????????">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=????????????">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????????????????">????????????????????</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistkeyword.do?keyword=ECO">???? ?????????</a> <!-- ????????? href ???????????? (?????????) -->
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=??????">???? ??????/??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=????????????">???????? ??????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=??????">???? ??????</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">????????????</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=A">(??????)???????????????</a>
</li>
	<li class="u-nav-item">
	<a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=B">????????????</a>
</li>
	<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=C">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=D">???????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=E">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=F">????????????</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">?????????</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="writeReviewPage.do">???????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="">???????????????</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="godonation.do" style="padding: 10px 48px;">??????</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">ABOUT - ????????????</a>
</li></ul>
          </div>



<%}else{ %>
<div class="u-custom-menu u-nav-container">
<ul class="u-nav u-unstyled u-nav-1">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="gomyPageform.do"><%=user.getCust_name() %></a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;" href="logout.do">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 14px 10px;"href="gomyPageform.do">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" href="gocartform.do" style="padding: 14px 10px;">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" href="gomyPageform.do" style="padding: 14px 10px;">???????????????</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gomyPageform.do">?????? ??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gowishListform.do">???????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="goboardform.do">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white"href="gomemberUpdate.do">?????? ??????</a>
</li></ul>
</div>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" >????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="">???????????????</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item"><a class="u-button-style u-nav-link">?????? ??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">???????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" >?????? ??????</a>
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
        <a href="gomainpage.do" class="u-image u-logo u-image-1" data-image-width="342" data-image-height="200"  title="???????????????" >
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
    top: -40px;
    left: 550px;
">
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-5"><li class="u-nav-item">
            <a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">?????? ????????????</a>
            
            <!-- ???????????? ?????? ???????????? ?????? -->
            <div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=??????">???? ??????</a>
            <div class="u-nav-popup"style="
    left: 137px;
    top: 0px;
">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">???????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">???????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=????????????">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????/?????????">?????????????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????/??????">??????????????????????</a>
</li></ul>
</div>
</li>
	<li class="u-nav-item">
	<a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=????????????">???? ????????????</a>
	<div class="u-nav-popup"style="
    left: 137px;
    top: 0px;
">
	<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=?????????">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????">??????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=????????????">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=????????????">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="goPdListCate2.do?category2=??????????????????">????????????????????</a>
</li></ul>
</div>
</li>
	<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistkeyword.do?keyword=ECO">???? ?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=??????">???? ??????/??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=????????????">???????? ??????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gofoodform.do?category=??????">???? ??????</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">????????????</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item">
            <a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=A">(??????)???????????????</a>
</li>
	<li class="u-nav-item">
	<a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=B">????????????</a>
</li>
	<li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=C">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=D">???????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=E">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="gopdlistsellertype.do?sellertype=F">????????????</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">?????????</a>

<div class="u-nav-popup">
            <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="writeReviewPage.do">???????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-white" href="">???????????????</a>
</li>
</ul>
</div>

</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="godonation.do" style="padding: 10px 48px;">??????</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" style="padding: 10px 48px;">ABOUT - ????????????</a>
</li></ul>
          </div><%} %>
          
          
          
          
          
          
          
          
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-9"><li class="u-nav-item"><a class="u-button-style u-nav-link">?????? ????????????</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><li class="u-nav-item">
                <a class="u-button-style u-nav-link" href="gofoodform.do?category=??????">???? ??????</a>
                <div class="u-nav-popup">
                <ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
     <li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=NS">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=CS">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=SS">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=SNACK">???????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=DRINK">???????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=HEALTH">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=MK">?????????????????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=SOURCE">??????????????????????</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=LIVING">???? ????????????</a>
<div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
	 <li class="u-nav-item"><a class="u-button-style u-nav-link">??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=DECO">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=BEAU">??????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=BABY">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=KITCH">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=CLEAN">????????????????????</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gopdlistkeyword.do?keyword=ECO">???? ?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=FASHION">???? ??????/??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=HEALTH">???????? ??????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="gofoodform.do?category=FUR">???? ??????</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">?????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="">??????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">ABOUT - ????????????</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </header> 
    <section class="u-clearfix u-section-1" id="sec-5216">
    
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-border-3 u-border-palette-4-light-3 u-container-style u-custom-color-1 u-expanded-width u-group u-radius-20 u-shape-round u-group-1" data-animation-name="" data-animation-duration="0" data-animation-direction="">
          
        </div>
        
        <!-- ?????????????????? -->
        <% String cate = ""; %>
        <% String eco = ""; %>
        <% if (keywordEco != null) {eco = "ECO";} else {eco = "null";}; %>
        <% if (pdlist != null) {cate = pdlist.get(0).getProd_category();}; %>
        <div class="u-clearfix u-custom-html u-custom-html-3">
          <ul class="lineUp"> ?????? &nbsp;&nbsp; 
          <select name="lineUp" id="lineup" onchange="location.href=this.value">
              <option value="gofoodform.do" selected="selected">?????????</option>
              <option value="gopdlistsort.do?sort=low&cate=<%=cate %>&eco=<%=eco%>">???????????????</option>
              <option value="gopdlistsort.do?sort=hi&cate=<%=cate %>&eco=<%=eco%>">???????????????</option>
            </select>
          </ul>
        </div>
        <h6 class="u-text u-text-1">
        
        <!-- ?????? ???????????? ??????, ?????? ?????? -->
          <span style="font-weight: 700;">
          <% if (keywordEco != null) { %>
           ????????? ??????
          <% } else if (category2 != null) { %>
          <%=category2 %>
          <% } else if (seller != null) { %> 
          <%=seller%> 
          <% } else { %>
          <%=pdlist.get(0).getProd_category()%>
          <%} %><br>
          
          <%=pdlist.size() %></span>?????? ??????
        </h6>
      </div>
    </section>   
    <section class="u-clearfix u-section-2" id="sec-a88d">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-container-layout-1">
          <!-- ??????????????? 1????????? ?????? -->
           
            <div class="u-list u-list-1">
              <div class="u-repeater u-repeater-1">
          <%for(int i=0;i< pdlist.size();i++){ %>
                <div class="u-container-style u-custom-item u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-container-layout-2">
                    <img class="u-image u-image-1" src="<%=pdlist.get(i).getProd_main_img() %>" data-image-width="1920" data-image-height="1406">
                    <h6 class="u-align-center u-text u-text-1"> <a href="gopdDetailPage.do?prod_id=<%=pdlist.get(i).getProd_id() %>"><%=pdlist.get(i).getProd_name() %></a><br>
                    </h6>
                    <h6 class="u-align-left u-text u-text-2"><%=pdlist.get(i).getProd_price()%>???</h6>
                  </div>
                </div>
                
                <%} %>
               
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
                    <td class="u-table-cell">2<br></td>
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
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">???????????? ????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base" style="padding: 36px 40px;">????????????</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">???????????? ????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">????????????</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">????????????</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="gomainpage.do" class="u-image u-logo u-image-1" data-image-width="342" data-image-height="200" title="???????????????">
          <img src="images/logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <p class="u-align-left u-text u-text-1">
          <span style="font-weight: 700;">?????????</span>&nbsp; &nbsp;????????????&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-weight: 700;">????????????</span>&nbsp; ?????????&nbsp;&nbsp;<br>
          <span style="font-weight: 700;">????????? ??????&nbsp;</span> &nbsp; &nbsp; ??????????????? ?????? ????????? 60(????????? 373-3)&nbsp;<br>
          <span style="font-weight: 700;">????????????</span>&nbsp; &nbsp;062-610-2400 &nbsp;&nbsp;<span style="font-weight: 700;">FAX</span>&nbsp; &nbsp; &nbsp;062-671-2450
        </p>
        <p class="u-align-left u-text u-text-2"><b>??????????????? ?????????????? ???????????????????????? ?????????.</b>
        </p>
      </div></footer>

  
</body></html>