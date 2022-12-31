package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooOrderDetail;
import com.zoo.entity.ZooProductList;

public class ZooGomyPageCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		ZooMember name = (ZooMember) session.getAttribute("user");
		ZooMember dtouser = new ZooMember();
		dtouser.setCust_id(name.getCust_id());

		// 상품 아이디만 가져오기
		ZooProductListDAO dao = new ZooProductListDAO();
		List<ZooProductList> list = dao.buylist(dtouser);

		System.out.println(list.size()); // 담긴 상품의 갯수
		// 여기까지 에러 발생 하지 않음
		
		// 상품정보 가져오기
		// 무한 루프 발생 해결해야 한다...
//		ZooProductList dto2 = new ZooProductList();
//		for(int i =0; i<list.size();i++) {
//			dto2.setProd_id(list.get(i).getProd_id());
//			ZooProductList result = dao.buylist2(dto2);
//			list.add(result);
//			System.out.println(list.get(i).getProd_name());
//		}
//		
		
		
//			for (int i = 0; i < list.size(); i++) {
//			
//			dto2.setProd_id(list.get(i).getProd_id());
//			ZooProductList result = dao.buylist2(dto2);
//			list.add(result);
//			
//			System.out.println(list.get(i).getProd_name());
//			
//			}

		session.setAttribute("buylist", list);

		return "myPageform";
	}

}
