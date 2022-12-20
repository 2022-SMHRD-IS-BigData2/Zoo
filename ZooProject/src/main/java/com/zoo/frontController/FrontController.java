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


import com.zoo.controller.Controller;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// HashMap : dict,key - value 형태로 데이터를 저장하고 조회하는 자료구조
	// HashMap<K,V>
	// K : Key값의 자료형
	// V : Value의 자료형
	private HashMap<String,Controller> handlerMapping;
	
	
	
	
	public void init(ServletConfig config) throws ServletException {
		
				// Servlet은 요청을 받아야 객체 생성이 이루어진다.
				// Servlet이 생성될 때 실행되는 메소드
				// 최대 1번까지만 실행 된다.
				System.out.println("Selvlet 실행");
				
				// 새로운 HashMap 생성
				handlerMapping = new HashMap<>();
				
				// .put(Key, Value)
			
				// 예시 handlerMapping.put("/goMain.do", new GomainCon());
		
		
		
		
		
		
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
				Controller con = null;
				
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
