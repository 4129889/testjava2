package com.tha103.newview.orders.model;

import java.util.List;

public interface OrdersDao2 {
	
	List<OrdersVO> selectByUserID(Integer userID);
}