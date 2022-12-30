package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooBoardDAO;
import com.zoo.entity.ZooBoard;

public class ZooGoReviewBoardCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		ZooBoardDAO dao = new ZooBoardDAO();
		List<ZooBoard> list = dao.boardList();
		session.setAttribute("dlist", list);
		return "reviewpage";
	}

}
