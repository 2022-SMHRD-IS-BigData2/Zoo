<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인페이지 입니다.</h1>

<form action="join.do">
	 <div class="wrap">
        
        <div class="login">
            <h2>회원 로그인</h2>
            <div class="login_sns">
            <li><a href="인스타.html"><i class="fab fa-instagram"></i></a></li>
            <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
            <li><a href=""><i class="fab fa-twitter"></i></a></li>
            </div>
            <div class="login_id">
                <input type="text" name="id" id="" placeholder="아이디">
            </div>
            <div class="login_pw">
                <input type="text" name="pw" id="" placeholder="비밀번호">
            </div>
            <div class="login_pw">
                <input type="text" name="nick" id="" placeholder="닉네임">
            </div>
            <div class="login_pw">
                <input type="text" name="addr" id="" placeholder="주소">
            </div>
            <div class="login_pw">
                <input type="text" name="tel" id="" placeholder="전화번호">
            </div>
            
            <div class="submit">
                <input type="submit" value="로그인">
            </div>
        </div>
  
    </div>
    </form>
<hr>
<form action="login.do">
	 <div class="wrap">
        
        <div class="login">
            <h2>회원 로그인</h2>
            <div class="login_sns">
            <li><a href="인스타.html"><i class="fab fa-instagram"></i></a></li>
            <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
            <li><a href=""><i class="fab fa-twitter"></i></a></li>
            </div>
            <div class="login_id">
                <input type="text" name="id"  placeholder="아이디">
            </div>
            <div class="login_pw">
                <input type="password" name="pw" placeholder="비밀번호">
            </div>
            
            <div class="submit">
                <input type="submit" value="로그인">
            </div>
        </div>

    </div>
    </form>

</body>
</html>