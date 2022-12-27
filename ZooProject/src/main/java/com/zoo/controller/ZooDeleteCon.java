package com.zoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zoo.dao.ZooMemberDAO;
import com.zoo.entity.ZooMember;

public class ZooDeleteCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 인코딩
				request.setCharacterEncoding("UTF-8");
			
				// 1. 데이터( 파라미터 ) 수집
				String cust_id = request.getParameter("id");
				String cust_pw = request.getParameter("pw");
				
				// 2. DTO에 데이터 묶기
				ZooMember dto = new ZooMember();
				dto.setCust_id(cust_id);
				dto.setCust_pw(cust_pw);
				
				// 3. 받아온 데이터를 DB에 저장
				ZooMemberDAO dao = new ZooMemberDAO();
				
				int cnt = dao.delete(dto);
				
				// ====================================================
						
				// 4. 회원가입 성공여부에 따라서 페이지 이동
				// 성공 -> Main.jsp
				// 실패 -> join.jsp
				String nextPage = "";
				if(cnt > 0) {
					// 성공
					nextPage = "redirect:/logout.do";
					System.out.println("성공");
				} else {
					// 실패
					nextPage = "redirect:/gomemberDelete.do";
					System.out.println("실패");
				}
					
		return nextPage;
	}

}
