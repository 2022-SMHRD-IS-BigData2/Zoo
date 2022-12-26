package com.zoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zoo.dao.ZooMemberDAO;
import com.zoo.entity.ZooMember;

public class ZooUpdateCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nextPage = null;
		// 0. 인코딩
		request.setCharacterEncoding("UTF-8");
		
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String nick = request.getParameter("nick");
			String tel = request.getParameter("tel");
			String addr = request.getParameter("addr");
			
			
			System.out.println("테스트 입니다.");
			System.out.println(id);
			System.out.println(pw);
			System.out.println(nick);
			System.out.println(tel);
			System.out.println(addr);
		
			
			ZooMember dto = new ZooMember();
			dto.setCust_id(id);
			dto.setCust_pw(pw);
			dto.setCust_name(nick);
			dto.setCust_tel(tel);
			dto.setCust_addr(addr);
			ZooMemberDAO dao = new ZooMemberDAO();
			int cnt = dao.update(dto);
			
			if(cnt>0) {
				System.out.println("변경성공");
				nextPage = "redirect:/gomainpage.do";
			}else {
				System.out.println("변경실패");
			}
		
		
		return nextPage;
	}

}
