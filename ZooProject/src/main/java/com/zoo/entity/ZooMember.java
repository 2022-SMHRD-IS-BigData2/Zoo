package com.zoo.entity;



import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor // 기본생성자 생성
@Data
public class ZooMember {
	
private	String cust_id;
private	String cust_pw;
private	String cust_name;
private	String cust_addr;
private	String cust_tel;
private	String cust_joindate;
private	String cust_type;

}
