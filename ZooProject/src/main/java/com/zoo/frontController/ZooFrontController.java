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
import com.zoo.controller.ZooDeleteCon;
import com.zoo.controller.ZooGoCartCon;
import com.zoo.controller.ZooGoDetailCon;
import com.zoo.controller.ZooGoJoinCon;
import com.zoo.controller.ZooGoLoginCon;
import com.zoo.controller.ZooGoSearchform;
import com.zoo.controller.ZooGoaboutNanuCon;
import com.zoo.controller.ZooGoboardCon;
import com.zoo.controller.ZooGodonation;
import com.zoo.controller.ZooGofoodformCon;
import com.zoo.controller.ZooGomainCon;
import com.zoo.controller.ZooGomemberDeleteCon;
import com.zoo.controller.ZooGomemberUpdateCon;
import com.zoo.controller.ZooGomyPageCon;
import com.zoo.controller.ZooGowishListCon;
import com.zoo.controller.ZooJoinCon;
import com.zoo.controller.ZooLoginCon;
import com.zoo.controller.ZooLogoutCon;
import com.zoo.controller.ZooPdListBudgetCon;
import com.zoo.controller.ZooPdListCate2Con;
import com.zoo.controller.ZooPdListKeywordCon;
import com.zoo.controller.ZooPdListSellerTypeCon;
import com.zoo.controller.ZooUpdateCon;
import com.zoo.controller.ZooWriteCon;
import com.zoo.controller.ZooWriteReviewCon;
import com.zoo.controller.ZoosearchCon;


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
		handlerMapping.put("/gojoin.do",new ZooGoJoinCon() );
		handlerMapping.put("/gologin.do",new ZooGoLoginCon() );
		handlerMapping.put("/gofoodform.do",new ZooGofoodformCon() ); // 대분류 카테고리별 상품목록 조회
		handlerMapping.put("/goPdListCate2.do",new ZooPdListCate2Con() ); // 중분류 카테고리별 상품목록 조회
		handlerMapping.put("/gopdlistbudget.do",new ZooPdListBudgetCon() ); // 예산별 상품목록 조회
		handlerMapping.put("/gopdlistkeyword.do",new ZooPdListKeywordCon() ); // 키워드별 상품목록 조회
		handlerMapping.put("/gopdlistsellertype.do",new ZooPdListSellerTypeCon() ); // 기업유형별 상품목록 조회
		handlerMapping.put("/godonation.do",new ZooGodonation() );
		handlerMapping.put("/gomemberUpdate.do", new ZooGomemberUpdateCon() );
		handlerMapping.put("/gomemberDelete.do", new ZooGomemberDeleteCon() );
		handlerMapping.put("/gomyPageform.do", new ZooGomyPageCon()  );
		handlerMapping.put("/gocartform.do", new ZooGoCartCon()  );
		handlerMapping.put("/goboardform.do", new ZooGoboardCon());
		handlerMapping.put("/gowishListform.do", new ZooGowishListCon());
		handlerMapping.put("/gopdDetailPage.do", new ZooGoDetailCon());
		handlerMapping.put("/goaboutNanuform.do", new ZooGoaboutNanuCon());

		handlerMapping.put("/gosearchform.do", new ZoosearchCon() );

		
		//======================================
		handlerMapping.put("/join.do",new ZooJoinCon() );
		handlerMapping.put("/login.do", new ZooLoginCon());
		handlerMapping.put("/logout.do", new ZooLogoutCon());
		handlerMapping.put("/update.do", new ZooUpdateCon());
		handlerMapping.put("/writeReviewPage.do", new ZooWriteReviewCon());
		handlerMapping.put("/write.do", new ZooWriteCon() );
		handlerMapping.put("/delete.do", new ZooDeleteCon());
		
		
		
		
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
