package com.zoo.entity;


import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ZooBoard {
	private int num;
	private String title;
	private String writer;
	private String indate;
	private String content;
	private String img;
}
