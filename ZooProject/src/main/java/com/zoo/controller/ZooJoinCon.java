package com.zoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.zoo.dao.ZooMemberDAO;
import com.zoo.entity.ZooMember;

public class ZooJoinCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			//pojo (단순한 자바 객체)
				String nextPage = null;
				// 0. 인코딩
				request.setCharacterEncoding("UTF-8");
				// 1. 파라미터(데이터) 수집
				String cust_id = request.getParameter("email");
				String cust_pw = request.getParameter("pw");
				String cust_name = request.getParameter("name");
				String cust_addr = request.getParameter("addr");
				String cust_tel = request.getParameter("tel");
				// 2. DTO로 묶기
				ZooMember dto = new ZooMember();
				dto.setCust_id(cust_id);
				dto.setCust_pw(cust_pw);
				dto.setCust_name(cust_name);
				dto.setCust_addr(cust_addr);
				dto.setCust_tel(cust_tel);
				// 3. DAO
				ZooMemberDAO dao = new ZooMemberDAO();
				int cnt = dao.join(dto);
				// 4. 성공실패 구분
				nextPage = "";
				if (cnt > 0) {
					System.out.println("회원가입 성공");
					// 이미 이동하는 컨트롤러가 있는 경우, 컨트롤러로 이동시키자.
					// redirect를 하는 경우, 앞에 redirect:/ 를 붙이기로 약속
					nextPage = "redirect:/goSuccess.do";
				} else {
					System.out.println("회원가입 실패...!");
					nextPage = "redirect:/goMain.do";
				}
				return nextPage;
		
		
	}

}
