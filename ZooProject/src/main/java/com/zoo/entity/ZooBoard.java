package com.zoo.entity;


import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ZooBoard {
	private int num;		// 리뷰 번호
	private String title;	// 제목
	private String content; // 내용
	private String img;		// 첨부파일
	private String indate;	// 작성일자
	private String writer;	// 작성자
	private int like;		// 좋아요
	private int cnt;		// 조회수
	private double score;	// 별점?
}
