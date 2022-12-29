package com.zoo.paging;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zoo.controller.ZooController;
import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooProductList;

public class ZooPagingCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
/*
		// Paging Calculation
		int currentPageNo = 1;
		int recordsPerPage = 0;
		String url = null;
		
		// 커넥션풀 연결, 인스턴스 생성
		
		
		// pages, lines 파라미터를 받아 currentPageNo, recordsPerPage 대입
		// 처음 페이지 열릴 때에는 당연히 1, 0임
		if (request.getParameter("pages") != null) {
			currentPageNo = Integer.parseInt(request.getParameter("pages"));
		}
		if (request.getParameter("lines") != null) {
			recordsPerPage = Integer.parseInt(request.getParameter("lines"));
		}
		// ZooPaging 객체 생성 (currentPageNo, recordsPerPage를 인자로 넣고 초기화함)
		// 객체 선언한 뒤 paging 출력해보면 recordsPerPage가 10으로 나온다.
		ZooPaging paging = new ZooPaging(currentPageNo, recordsPerPage);
		
//		System.out.println("paging : " + paging);
		
		// 해당 게시글의 인덱스를 구하는 변수(offset)
		int offset = (paging.getCurrentPageNo() - 1) * paging.getRecordsPerPage();
		
//		System.out.println("offset : " + offset);
		
		// 상품 전체 갯수 구하여 numberOfRecords 메소드에 셋팅함
		paging.setNumberOfRecords(currentPageNo); // 셋팅해야함
		
		// 페이징 만듦
		paging.makePaging();
		
		// 
		
 */
		return null;
	}
}
