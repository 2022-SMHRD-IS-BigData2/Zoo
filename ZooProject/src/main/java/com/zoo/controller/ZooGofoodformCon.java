package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		// 카테고리별 파라미터값 수집 방법???
		System.out.println(category + "로 이동");
		
//		ZooProductListDAO dao = new ZooProductListDAO();
//		List<ZooProductList> list = dao.productList1("FOOD");
		
//		System.out.println(list.get(0).getProd_name());
//		System.out.println(list.get(1).getProd_name());
//		System.out.println(list.get(2).getProd_name());
		
		
		return "foodform";
	}

}
