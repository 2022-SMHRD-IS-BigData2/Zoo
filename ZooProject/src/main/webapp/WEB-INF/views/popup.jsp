<%@page import="com.zoo.entity.ZooMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	    <div class="receipt" style="background-image: url(./images/recipt.jpg);
    background-size: contain; background-position: center; background-repeat: no-repeat;">
  <%ZooMember user = (ZooMember)session.getAttribute("user"); %>
  <table cellspacing="1" cellpadding="1"; align="center">
      <tbody>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center"><h4>기부가 완료되었습니다.</h4></td>
      </tr>
      <tr>
        <td><h6 align="right">기부자명 :</h6></td>
        <td><h6><%=user.getCust_id() %></h6></td> <!--구매한 사람-->
      </tr>
      <tr>
        <td><h6 align="right">포인트 사용 :</h6></td>
        <td><h6> - 1,000</h6></td>
      </tr>
    </tbody>
</table>
   
<!-- <input type='BUTTON' value=" 창닫기" name="close" onClick='self.close()'> -->
  </div>
	
</body>
</html>