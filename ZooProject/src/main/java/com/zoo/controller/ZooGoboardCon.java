package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zoo.entity.ZooBoard;
import com.zoo.dao.ZooBoardDAO;

public class ZooGoboardCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 게시글 전체 목록 가져오기
				ZooBoardDAO dao = new ZooBoardDAO();
				
				List<ZooBoard> list=dao.boardList();
				
				System.out.println(list.size());
				
				// 객체바인딩
				// request영역에 list를 저장해뒀다가, jsp로 이동하고 나서 꺼내자.
				request.setAttribute("list", list);
				//  페이지 이동
		
		return "boardform";
		
		

	}

}