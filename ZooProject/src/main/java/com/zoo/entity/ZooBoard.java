package com.zoo.entity;


import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ZooBoard {
	private int num;
	private String title;
	private String content;
	private String img;
	private String indate;
	private String writer;
	private int like;
	private int cnt;
	private double score;
}
