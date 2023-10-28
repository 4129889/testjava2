package com.tha103.newview.orders.service.impl;

import java.util.List;

import javax.persistence.Tuple;

import com.tha103.newview.orders.model.Orderlist;
import com.tha103.newview.orders.model.Orders;
import com.tha103.newview.orders.model.OrdersDao2;
import com.tha103.newview.orders.model.OrdersDaoImpl2;
import com.tha103.newview.orders.service.OrdersService2;

public class OrdersServiceImpl2 implements OrdersService2 {
	private OrdersDao2 dao;
	
	public OrdersServiceImpl2() {
		dao = new OrdersDaoImpl2();
	}

	@Override
	public List<Orders> findByUserID(Integer userID) {
		return dao.selectByUserID(userID);
	}
	
	@Override
	public List<Tuple> findByOrderListID(Integer orderListID) {
		return dao.selectByOrderListIDForActCom(orderListID);
	}
	
	@Override
	public boolean saveCom(Orderlist orderlist) {
		if (orderlist == null || orderlist.getOrderListID() == null) {
			return false;
		}
		return dao.updateOrderlistForCom(orderlist) > 0;
	}
	
	public int cancelOrders(Integer orderID) {			
		return dao.cancelOrdType(orderID);
		
	}
	
	public int cancelReview(Integer orderListID) {			
		return dao.deleteReview(orderListID);
		
	}
}
