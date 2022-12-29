package com.zoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooMemberDAO;
import com.zoo.entity.ZooMember;

public class ZooLoginCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nextPage = null;
		// 0. 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		ZooMember dto = new ZooMember();
		dto.setCust_id(id);
		dto.setCust_pw(pw);
		
		ZooMemberDAO dao = new ZooMemberDAO();
		ZooMember result = dao.login(dto);
		
		if(result == null) {
			System.out.println("로그인 실패");
			nextPage = "redirect:/gologin.do";
		}else {
			System.out.println("로그인 성공");
			System.out.println(result.getCust_id());
			// 세션에 사용자 정보 저장
			HttpSession session = request.getSession();
			session.setAttribute("user",result);
		
			nextPage = "redirect:/gomainpage.do";
		}
		

		return nextPage;
		
		
	}

}
