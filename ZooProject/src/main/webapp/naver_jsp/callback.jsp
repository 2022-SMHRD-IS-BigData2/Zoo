<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String clientId = "ocl43uCuwjsRNJJY5u6W";//애플리케이션 클라이언트 아이디값";
    String clientSecret = "xhiG3XMWjc";//애플리케이션 클라이언트 시크릿값";
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode("http://localhost:8083/ZooProject/naver_jsp/callback.jsp", "UTF-8");
    String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code"
        + "&client_id=" + clientId
        + "&client_secret=" + clientSecret
        + "&redirect_uri=" + redirectURI
        + "&code=" + code
        + "&state=" + state;
    String access_token = "";
    String refresh_token = "";
    try {
		String apiurl = "https://openapi.naver.com/v1/nid/me";
		URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection)url.openConnection();
      con.setRequestMethod("GET");
      int responseCode = con.getResponseCode();
      BufferedReader br;
      System.out.print("responseCode="+responseCode);
      if (responseCode == 200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
      } else {  // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
      }
      String inputLine;
      StringBuilder res = new StringBuilder();
      while ((inputLine = br.readLine()) != null) {
        res.append(inputLine);
      }
      br.close();
      if (responseCode == 200) {
        System.out.println(res.toString());
    	JSONParser parsing = new JSONParser();
    	Object obj = parsing.parse(res.toString());
    	JSONObject jsonObj = (JSONObject)obj;
    	JSONObject resObj = (JSONObject)jsonObj.get("response");

    	String naverCode = (String)resObj.get("id");
    	String email = (String)resObj.get("email");
    	String name = (String)resObj.get("name");
    	String nickName = (String)resObj.get("nickname");
    	
    	access_token = (String)jsonObj.get("access_token");
    	refresh_token = (String)jsonObj.get("refresh_token");
      }
    } catch (Exception e) {
    	System.out.println(e);
      // Exception 로깅
    }
    
    //
    
  %>
</body>
</html>
  
</body>
</html>