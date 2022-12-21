package com.zoo.entity;



import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor // 기본생성자 생성

public class ZooMember {
	
private	String cust_id =  "";
private	String cust_pw =  "";
private	String cust_name =  "";
private	String cust_addr =  "";
private	String cust_tel =  "";
private	String cust_joindate =  "";
private	String cust_type =  "";


public String getCust_id() {
	return cust_id;
}
public void setCust_id(String cust_id) {
	this.cust_id = cust_id;
}
public String getCust_pw() {
	return cust_pw;
}
public void setCust_pw(String cust_pw) {
	this.cust_pw = cust_pw;
}
public String getCust_name() {
	return cust_name;
}
public void setCust_name(String cust_name) {
	this.cust_name = cust_name;
}
public String getCust_addr() {
	return cust_addr;
}
public void setCust_addr(String cust_addr) {
	this.cust_addr = cust_addr;
}
public String getCust_tel() {
	return cust_tel;
}
public void setCust_tel(String cust_tel) {
	this.cust_tel = cust_tel;
}
public String getCust_joindate() {
	return cust_joindate;
}
public void setCust_joindate(String cust_joindate) {
	this.cust_joindate = cust_joindate;
}
public String getCust_type() {
	return cust_type;
}
public void setCust_type(String cust_type) {
	this.cust_type = cust_type;
}




}
