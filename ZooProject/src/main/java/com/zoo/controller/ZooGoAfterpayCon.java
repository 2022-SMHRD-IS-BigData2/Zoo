package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooCartDAO;
import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooProductList;

public class ZooGoAfterpayCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
	      
	      ZooMember name = (ZooMember)session.getAttribute("user");
		
	    
	      
		ZooMember dto = new ZooMember();
		dto.setCust_id(name.getCust_id());
		ZooCartDAO dao = new ZooCartDAO();
		List<ZooProductList>paylist = dao.cartpay(dto);
		session.setAttribute("paylist", paylist);
		
	
		
		
		
		return "orderEndform";
	}

}
