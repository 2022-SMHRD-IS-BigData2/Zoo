package com.zoo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ZooCart {

	int cart_seq;
	String cust_id;
	String prod_id;
}
