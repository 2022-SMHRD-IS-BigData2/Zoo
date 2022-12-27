package com.zoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.zoo.dao.ZooBoardDAO;
import com.zoo.entity.ZooBoard;

public class ZooWriteCon implements ZooController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			// 0. MultiPartRequest 생성
			// 저장할 폴더 경로
			// webapp 밑에 있는 images 폴더 경로
			// request.getServletContext() : Tomcat이 복사해서 만든 폴더 정보들 == webapp
			// webapp/images
			String savePath=request.getServletContext().getRealPath("images");
			
			// 최대사이즈
			// byte 단위
			int maxSize = 5 * 1024 * 1024; // 5MB
			
			// 인코딩 방식
			String encoding = "UTF-8";
			System.out.println(savePath);
			// MultipartRequest 생성
			MultipartRequest multi = new MultipartRequest(
					request,
					savePath,
					maxSize,
					encoding,
					new DefaultFileRenamePolicy() // 중복된 파일 이름을 변경
					);
					
			
			// 1. 데이터 가져오기
			// 제목, 작성자, 내용, 이미지
			String title = multi.getParameter("title");
			String writer = multi.getParameter("writer");
			String content = multi.getParameter("content");
			
			// 이미지파일의 이름 가져오기
			// 이때, 파일 저장이 일어난다.
			String img = multi.getFilesystemName("file");
			
			// 2. DTO로 묶기
			ZooBoard dto = new ZooBoard();
			dto.setTitle(title);
			dto.setWriter(writer);
			dto.setContent(content);
			dto.setImg(img);
			// 3. DAO의 boardWrite 사용
			ZooBoardDAO dao = new ZooBoardDAO();
			int cnt = dao.boardWrite(dto);
			// 4. 성공실패 구분
			if(cnt > 0) {
				System.out.println("게시글 작성 성공");
			}else {
				System.out.println("게시글 작성 실패");
			}
			
			// 5. 페이지 이동
			return "redirect:/goBoard.do";
	}

}
