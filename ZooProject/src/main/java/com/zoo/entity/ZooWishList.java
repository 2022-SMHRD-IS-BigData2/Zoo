package com.zoo.entity;

public class ZooWishList {
private String prod_id = "";
private String cust_id = "";

public String getProd_id() {
	return prod_id;
}
public void setProd_id(String prod_id) {
	this.prod_id = prod_id;
}
public String getCust_id() {
	return cust_id;
}
public void setCust_id(String cust_id) {
	this.cust_id = cust_id;
}
public ZooWishList(String prod_id, String cust_id) {
	super();
	this.prod_id = prod_id;
	this.cust_id = cust_id;
}
}
