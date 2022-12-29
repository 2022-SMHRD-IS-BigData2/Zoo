<%@page import="com.zoo.entity.ZooBoard"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% List<ZooBoard> list = (List<ZooBoard>)request.getAttribute("list"); %>
<div id="board">
				<table id = "list">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>시간</td>
					</tr>
					<%for( ZooBoard board : list ){ %>
					<tr>
						<td><%=board.getNum() %></td>
						<td><a href="goView.do?num=<%=board.getNum() %>"><%=board.getTitle() %></a></td>
						<td><%=board.getWriter() %></td>
						<td><%=board.getIndate() %></td>
					</tr>
				<%} %>
</body>
</html>