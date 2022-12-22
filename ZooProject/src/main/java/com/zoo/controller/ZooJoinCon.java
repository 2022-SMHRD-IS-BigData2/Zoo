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
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String tel = request.getParameter("tel");
				String nick = request.getParameter("nick");
				String addr = request.getParameter("addr");
				// 2. DTO로 묶기
				ZooMember dto = new ZooMember();
				dto.setCust_id(id);
				dto.setCust_pw(pw);
				dto.setCust_name(nick);
				dto.setCust_tel(tel);
				dto.setCust_addr(addr);
				// 3. DAO
				ZooMemberDAO dao = new ZooMemberDAO();
				
				int cnt = dao.join(dto);
				// 4. 성공실패 구분
				nextPage = "";
				if (cnt > 0) {
					System.out.println("회원가입 성공");
					// 이미 이동하는 컨트롤러가 있는 경우, 컨트롤러로 이동시키자.
					// redirect를 하는 경우, 앞에 redirect:/ 를 붙이기로 약속
					nextPage = "redirect:/gomainpage.do";
				} else {
					System.out.println("회원가입 실패...!");
					nextPage = "redirect:/ZooMain.do";
				}
				return nextPage;
			
		
	}

}
