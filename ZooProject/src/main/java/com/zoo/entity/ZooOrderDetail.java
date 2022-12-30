package com.zoo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ZooOrderDetail {

   int od_seq;
   int order_seq;
   String prod_id;
   int od_cnt;
}