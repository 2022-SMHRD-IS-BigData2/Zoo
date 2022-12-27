package com.zoo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
public class ZooProductList {
	
	public String prod_id = "";
	public String prod_category = "";
	public String prod_category2 = "";
	public String prod_name = "";
	public int prod_price = 0;
	public String prod_img = "";
	public String prod_main_img = "";
	public String maker_id = "";
	public String prod_keyword1 = "";
	public String prod_keyword2 = "";
	
	public String getProd_id() {
		return prod_id;
	}
	public void setProd_id(String prod_id) {
		this.prod_id = prod_id;
	}
	public String getProd_category() {
		return prod_category;
	}
	public void setProd_category(String prod_category) {
		this.prod_category = prod_category;
	}
	public String getProd_category2() {
		return prod_category2;
	}
	public void setProd_category2(String prod_category2) {
		this.prod_category2 = prod_category2;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public String getProd_img() {
		return prod_img;
	}
	public void setProd_img(String prod_img) {
		this.prod_img = prod_img;
	}
	public String getProd_main_img() {
		return prod_main_img;
	}
	public void setProd_main_img(String prod_main_img) {
		this.prod_main_img = prod_main_img;
	}
	public String getMaker_id() {
		return maker_id;
	}
	public void setMaker_id(String maker_id) {
		this.maker_id = maker_id;
	}
	public String getProd_keyword1() {
		return prod_keyword1;
	}
	public void setProd_keyword1(String prod_keyword1) {
		this.prod_keyword1 = prod_keyword1;
	}
	public String getProd_keyword2() {
		return prod_keyword2;
	}
	public void setProd_keyword2(String prod_keyword2) {
		this.prod_keyword2 = prod_keyword2;
	}
	

}
