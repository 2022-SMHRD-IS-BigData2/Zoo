package com.zoo.frontController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.zoo.controller.ZooController;
import com.zoo.controller.ZooGoAfterLogin;
import com.zoo.controller.ZooGoSuccessCon;
import com.zoo.controller.ZooGomainCon;
import com.zoo.controller.ZooJoinCon;
import com.zoo.controller.ZooLoginCon;


/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class ZooFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private HashMap<String,ZooController> handlerMapping;
	
	public void init(ServletConfig config) throws ServletException {
	
		System.out.println("Selvlet 실행");
		
		// 새로운 HashMap 생성
		handlerMapping = new HashMap<>();
		handlerMapping.put("/gomainpage.do",new ZooGomainCon() );
		handlerMapping.put("/goSuccess.do", new ZooGoSuccessCon());
		handlerMapping.put("/goAfterLogin.do", new ZooGoAfterLogin());
		//======================================
		handlerMapping.put("/join.do",new ZooJoinCon() );
		handlerMapping.put("/login.do", new ZooLoginCon());
		
		
		
		
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				// 1. UrlMapping 확인
		
				// 전체 주소 : FrontController/join.do
				String uri = request.getRequestURI();
				
				// Context Path : FrontController
				String cpath = request.getContextPath();
				
				// String .substring()
				// "안녕하세요.".substring(2)
				// 하세요. 결과가 나온다.
			
				// UrlMapping : /join.do 정보만 가져오기
				String mapping = uri.substring(cpath.length());
				System.out.println(mapping);
				
				
				//======================================================================
				
				
				
				String nextPage = null;
				// Controller Interface로 업캐스팅해서 모든 Con들을 담아줄 수 있게 만듦
				ZooController con = null;
				
				// 요청에 맞는 POJO 꺼내기
				con = handlerMapping.get(mapping);
				
				
				
				

				//======================================================================
				
				
				if(con!=null) {
				nextPage = con.execute(request, response);
				}
				
				// 3. 페이지 이동
				
				if(nextPage!=null) {
					if(nextPage.contains("redirect:/")) {	
						// split 함수 이용
						// "redirect:/goMain.do".split(":/")
						// --> ["redirect","goMain.do"]
						
						response.sendRedirect(nextPage.split(":/")[1]);				
					}
					else {
						RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/"+nextPage+".jsp");
						rd.forward(request, response);
					}
		
		
	
	
	
	
	}

	}
}
