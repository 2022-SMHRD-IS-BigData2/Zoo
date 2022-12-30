package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.entity.ZooBoard;
import com.zoo.entity.ZooMember;
import com.zoo.dao.ZooBoardDAO;

public class ZooGoboardCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		ZooMember user = (ZooMember)session.getAttribute("user");
		ZooBoardDAO dao = new ZooBoardDAO();
		System.out.println(user.getCust_id());
		List<ZooBoard> list = dao.boardListid(user.getCust_id());
		session.setAttribute("dlist", list);
		// 페이지 이동

		return "boardform";

	}

}
