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
import com.zoo.controller.ZooGoAfterpayCon;
import com.zoo.controller.ZooGoCartCon;
import com.zoo.controller.ZooGoDetailCon;
import com.zoo.controller.ZooGoIntroPageCon;
import com.zoo.controller.ZooGoJoinCon;
import com.zoo.controller.ZooGoLoginCon;
import com.zoo.controller.ZooGoReviewBoardCon;
import com.zoo.controller.ZooGoSearchform;
import com.zoo.controller.ZooGoaboutNanuCon;
import com.zoo.controller.ZooGoboardCon;
import com.zoo.controller.ZooGodonation;
import com.zoo.controller.ZooGofoodformCon;
import com.zoo.controller.ZooGomainCon;
import com.zoo.controller.ZooGomemberDeleteCon;
import com.zoo.controller.ZooGomemberUpdateCon;
import com.zoo.controller.ZooGomyPageCon;
import com.zoo.controller.ZooGowishlistCon;
import com.zoo.controller.ZooCreatewishCon;
import com.zoo.controller.ZooJoinCon;
import com.zoo.controller.ZooLoginCon;
import com.zoo.controller.ZooLogoutCon;
import com.zoo.controller.ZooPdListBudgetCon;
import com.zoo.controller.ZooPdListCate2Con;
import com.zoo.controller.ZooPdListKeywordCon;
import com.zoo.controller.ZooPdListSellerTypeCon;
import com.zoo.controller.ZooPdListSortCon;
import com.zoo.controller.ZooPopupCon;
import com.zoo.controller.ZooUpdateCon;
import com.zoo.controller.ZooViewReviewCon;
import com.zoo.controller.ZooWriteCon;
import com.zoo.controller.ZooWriteReviewCon;
import com.zoo.controller.ZoosearchCon;
import com.zoo.controller.ZoowishDelCon;


/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class ZooFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private HashMap<String,ZooController> handlerMapping;
	
	public void init(ServletConfig config) throws ServletException {
	
		System.out.println("Selvlet ??????");
		
		// ????????? HashMap ??????
		handlerMapping = new HashMap<>();
		handlerMapping.put("/gomainpage.do",new ZooGomainCon() );
		handlerMapping.put("/gojoin.do",new ZooGoJoinCon() );
		handlerMapping.put("/gologin.do",new ZooGoLoginCon() );
		handlerMapping.put("/gofoodform.do",new ZooGofoodformCon() ); // ????????? ??????????????? ???????????? ??????
		handlerMapping.put("/goPdListCate2.do",new ZooPdListCate2Con() ); // ????????? ??????????????? ???????????? ??????
		handlerMapping.put("/gopdlistbudget.do",new ZooPdListBudgetCon() ); // ????????? ???????????? ??????
		handlerMapping.put("/gopdlistkeyword.do",new ZooPdListKeywordCon() ); // ???????????? ???????????? ??????
		handlerMapping.put("/gopdlistsellertype.do",new ZooPdListSellerTypeCon() ); // ??????????????? ???????????? ??????
		handlerMapping.put("/gopdlistsort.do",new ZooPdListSortCon() ); // ????????????
		handlerMapping.put("/godonation.do",new ZooGodonation() );
		handlerMapping.put("/gomemberUpdate.do", new ZooGomemberUpdateCon() );
		handlerMapping.put("/gomemberDelete.do", new ZooGomemberDeleteCon() );
		handlerMapping.put("/gomyPageform.do", new ZooGomyPageCon()  );
		handlerMapping.put("/gocartform.do", new ZooGoCartCon()  );
		handlerMapping.put("/goboardform.do", new ZooGoboardCon());
		handlerMapping.put("/gowishListform.do", new ZooCreatewishCon());
		handlerMapping.put("/gopdDetailPage.do", new ZooGoDetailCon());
		handlerMapping.put("/goaboutNanuform.do", new ZooGoaboutNanuCon());
		handlerMapping.put("/gosearchform.do", new ZoosearchCon() );
		handlerMapping.put("/popup.do", new ZooPopupCon() );
		handlerMapping.put("/gowishList.do", new ZooGowishlistCon());
		handlerMapping.put("/gopayafter.do", new ZooGoAfterpayCon());

		handlerMapping.put("/godelwish.do", new ZoowishDelCon());
		handlerMapping.put("/gointropage.do", new ZooGoIntroPageCon());
		

		
		
		handlerMapping.put("/reviewpage.do", new ZooGoReviewBoardCon());

		//======================================
		handlerMapping.put("/join.do",new ZooJoinCon() );
		handlerMapping.put("/login.do", new ZooLoginCon());
		handlerMapping.put("/logout.do", new ZooLogoutCon());
		handlerMapping.put("/update.do", new ZooUpdateCon());
		handlerMapping.put("/writeReviewPage.do", new ZooWriteReviewCon());
		handlerMapping.put("/write.do", new ZooWriteCon() );
		handlerMapping.put("/delete.do", new ZooDeleteCon());
		handlerMapping.put("/viewReviewPage.do", new ZooViewReviewCon());
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				// 1. UrlMapping ??????
		
				// ?????? ?????? : FrontController/join.do
				String uri = request.getRequestURI();
				
				// Context Path : FrontController
				String cpath = request.getContextPath();
				
				// String .substring()
				// "???????????????.".substring(2)
				// ?????????. ????????? ?????????.
			
				// UrlMapping : /join.do ????????? ????????????
				String mapping = uri.substring(cpath.length());
				System.out.println(mapping);
				//======================================================================
				String nextPage = null;
				// Controller Interface??? ?????????????????? ?????? Con?????? ????????? ??? ?????? ??????
				ZooController con = null;
				
				// ????????? ?????? POJO ?????????
				con = handlerMapping.get(mapping);
				//======================================================================
				
				if(con!=null) {
				nextPage = con.execute(request, response);
				}
				
				// 3. ????????? ??????
				
				if(nextPage!=null) {
					if(nextPage.contains("redirect:/")) {	
						// split ?????? ??????
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
