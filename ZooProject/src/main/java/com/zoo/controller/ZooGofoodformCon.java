package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;

public class ZooGofoodformCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ZooProductListCon execute() 호출");
		
		request.setCharacterEncoding("UTF-8");

		String category = request.getParameter("category");
		ZooProductList dto = new ZooProductList();
		
		// 파라미터 수집값 dto에 set
		dto.setProd_category(category);
		System.out.println(category + "(으)로 이동");

		// DAO 객체 생성
		ZooProductListDAO dao = new ZooProductListDAO();
		
		// productList1 메소드 실행
		List<ZooProductList> list = dao.productList1(dto);

		// dao 실행결과 확인
		System.out.println(list.size());
		
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		return "foodform";
	}

}
