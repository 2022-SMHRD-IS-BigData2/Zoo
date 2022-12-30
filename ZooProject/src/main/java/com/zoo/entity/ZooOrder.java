package com.zoo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ZooOrder {

   int order_seq;
   String order_date;
   String cust_id;
   int total_amount;
   
}
