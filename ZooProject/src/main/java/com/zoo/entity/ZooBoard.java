package com.zoo.entity;


import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ZooBoard {
	private int re_seq;		// 리뷰 번호
	private String re_title;	// 제목
	private String re_content; // 내용
	private String re_file;		// 첨부파일
	private String re_dt;	// 작성일자
	private String cust_id;	// 작성자
	private int re_likes;		// 좋아요
	private int re_cnt;		// 조회수
	private double re_score;	// 별점?
}
