package com.zoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zoo.dao.ZooCartDAO;
import com.zoo.entity.ZooCart;
import com.zoo.dao.ZooProductListDAO;
import com.zoo.entity.ZooMember;
import com.zoo.entity.ZooOrder;
import com.zoo.entity.ZooOrderDetail;
import com.zoo.entity.ZooProductList;

public class ZooGoAfterpayCon implements ZooController {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // 0. 기본작업
      // 세션 열기
      HttpSession session = request.getSession();

      // 사용자 정보 가져오기
      ZooMember user = (ZooMember) session.getAttribute("user");

      // 사용자 dto 객체 생성
      ZooMember dto = new ZooMember();
      dto.setCust_id(user.getCust_id());

      // 장바구니 dao 생성
      ZooCartDAO dao = new ZooCartDAO();

      // 1. 주문한 상품 리스트 가져오기 ==========================
      List<ZooProductList> paylist = dao.cartpay(dto);
      System.out.println("===== 주문완료한 상품 목록 =====");
      for (int i = 0; i < paylist.size(); i++) {
         System.out.println(paylist.get(i).getProd_name());
      }

      // total_amount 구하기
      int sum = 0;
      for (int i = 0; i < paylist.size(); i++) {
         sum += paylist.get(i).getProd_price();
      }

      // 주문한 상품 정보를 세션에 담아 보내기 ==> 주문완료 페이지에서 보여줄 데이터
      session.setAttribute("paylist", paylist);

      // 2. 주문정보 테이블에 저장
      // order dto 생성해서 주문자 아이디, 총 금액 set
      ZooOrder order = new ZooOrder();
      order.setCust_id(user.getCust_id());
      order.setTotal_amount(sum);

      int cnt1 = dao.order_insert(order);
      // int order_seq = dao.order_insert(order);
      // 저장 성공 여부 출력
      if (cnt1 > 0) {
         System.out.println("===== 주문 정보 ===== ORDER TABLE 저장 성공 =====");
      }

      // 주문정보 저장 후 생성된 주문번호 가져오기 : 주문번호는 짝수로만 생성됨..
      int order_seq = order.getOrder_seq() + 1;
      System.out.println("주문완료! 주문번호 : " + order_seq);

      // 3. 주문정보 상세 테이블에 저장 :: CARTPAY 결과값 PAYLIST를 사용하기
      // orderDetail dto 생성해서 주문번호, 상품아이디 set (수량은 무조건 1)
      // for문을 사용해서 상품 개수만큼 저장 (3개 샀으면 3번 저장)
      int cnt2 = 0;
      ZooOrderDetail orderDe = new ZooOrderDetail();
      orderDe.setOrder_seq(order_seq);
      
      for (int i = 0; i < paylist.size(); i++) {
         orderDe.setProd_id(paylist.get(i).getProd_id());
         cnt2 += dao.order_detail_insert(orderDe);
      }
      
      // ORDER_DETAIL 저장 성공 여부 출력
      if (cnt2 > 0) {
         System.out.println("===== 주문 정보 ===== ORDER DETAIL TABLE 상품 " + cnt2 + "개 저장 성공 =====");
      }

      // 4. 장바구니 테이블에서 정보 삭제 :: CARTPAY 결과값 PAYLIST를 사용하기
      ZooCart dtoCart = new ZooCart();
      dtoCart.setCust_id(user.getCust_id());
      int deletecnt = dao.cart_delete(dtoCart);
      
      // 성공 여부 출력
      if (deletecnt > 0) {
         System.out.println("===== 장바구니 데이터 삭제 완료 =====");
      }

      return "orderEndform";
   }

}