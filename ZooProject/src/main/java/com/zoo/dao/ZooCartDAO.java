package com.zoo.dao;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.Cookie;

import org.apache.catalina.mapper.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SessionManager;
import com.zoo.entity.ZooCart;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooOrder;
import com.zoo.entity.ZooOrderDetail;
import com.zoo.entity.ZooProductList;

public class ZooCartDAO {

   // SqlSessionFactory 받아오기
   SqlSessionFactory sqlsessionFactory = SessionManager.getSqlSessionFactory();

   // 1. 상품 저장하기
   public int cartInsert(ZooCart dto) {


      SqlSession session = sqlsessionFactory.openSession(true);

		int cnt = session.insert("insert_cart", dto);
		
		return cnt;
	}
	
	
	

   
   // 2. 상품 불러오기
   public List<ZooProductList> cartPdList(ZooCart dto) {

      SqlSession session = sqlsessionFactory.openSession(true);


      List<ZooProductList> pdDetail = session.selectList("prod_cart", dto);
      session.close();
      return pdDetail;
   }

   // 3. 결제 : 결제할 상품 정보 가져오기 --> 결제완료 페이지에 보여줄 data
   public List<ZooProductList> cartpay(ZooMember dto) {

      SqlSession session = sqlsessionFactory.openSession(true);

      List<ZooProductList> paylist = session.selectList("paycart", dto);
      session.close();
      return paylist;
   }

   // 4. 결제한 상품 정보를 ORDER TABLE에 저장하기
   public int order_insert(ZooOrder dto) {
      SqlSession session = sqlsessionFactory.openSession(true);

      int cnt = session.insert("order_insert", dto);
      session.close();
      return cnt;
   }

   // 4-1. 저장된 주문번호 가져오기 (error)
   public int order_seq() {
      SqlSession session = sqlsessionFactory.openSession(true);
      int order_seq = session.insert("order_seq");
      session.close();
      return order_seq;
   }

   // 5. 결제한 상품 정보를 ORDER DETAIL TABLE에 저장하기
   // dao 한번 실행할 때 상품 1개의 정보만 저장된다.
   public int order_detail_insert(ZooOrderDetail dto) {
      SqlSession session = sqlsessionFactory.openSession(true);
      int cnt = session.insert("order_detail_insert", dto);
      session.close();
      return cnt;
   }

   // 6. 장바구니 삭제 : 결제한 상품 정보 장바구니 table에서 삭제하기
   public int cart_delete(ZooCart dto) {
      SqlSession session = sqlsessionFactory.openSession(true);
      int cnt = session.insert("delete_all_cart", dto);
      session.close();
      return cnt;
   }

   
}

	


