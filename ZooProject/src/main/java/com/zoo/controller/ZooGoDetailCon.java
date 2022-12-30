package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooBoardDAO;
import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooBoard;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;

public class ZooGoDetailCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 타입 받아오기

		String prod_id = request.getParameter("prod_id");
		ZooProductList dto = new ZooProductList();
		
		dto.setProd_id(prod_id);
		
		// 파라미터 수집
		System.out.println(prod_id + "로 이동");
		ZooProductListDAO dao = new ZooProductListDAO();
		ZooProductList detail = dao.pdDetail(dto);
		HttpSession session = request.getSession();
		session.setAttribute("detail", detail);
		
		// 리뷰 문제 해결하기
		ZooMember user = (ZooMember)session.getAttribute("user");
		
		ZooBoardDAO daoboard = new ZooBoardDAO();
		System.out.println(user.getCust_id());
		List<ZooBoard> list = daoboard.boardList(user.getCust_id());

		// dao에서 selectList 선택했는데 아무것도 없어서 오류발생하는거 맞네요
		// 객체바인딩
		// request영역에 list를 저장해뒀다가, jsp로 이동하고 나서 꺼내자.
		session.setAttribute("dlist", list);
		
		
		
		return "pdDetailPage";
	}

}
