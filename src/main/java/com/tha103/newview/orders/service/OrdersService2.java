package com.tha103.newview.orders.service;

import java.util.List;

import com.tha103.newview.orders.model.Orders;
import com.tha103.newview.orders.model.OrdersVO;

public interface OrdersService2 {
	
	List<Orders> findByUserID(Integer userID);
	
	public Orders updateOrders(Integer ordType);
}
