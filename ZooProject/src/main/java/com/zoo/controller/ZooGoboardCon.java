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
		// 게시글 전체 목록 가져오기
		ZooBoardDAO dao = new ZooBoardDAO();
		System.out.println(user.getCust_id());
		List<ZooBoard> list = dao.boardList(user.getCust_id());

		// dao에서 selectList 선택했는데 아무것도 없어서 오류발생하는거 맞네요
		// 객체바인딩
		// request영역에 list를 저장해뒀다가, jsp로 이동하고 나서 꺼내자.
		session.setAttribute("list", list);
		// 페이지 이동

		return "boardform";

	}

}
