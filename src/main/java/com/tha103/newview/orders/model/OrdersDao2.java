package com.tha103.newview.orders.model;

import java.util.List;

import javax.persistence.Tuple;

public interface OrdersDao2 {
	
	int updateOrderlistForCom(Orderlist nOrderlist);
	
	List<Orders> selectByUserID(Integer userID);
	
	List<Tuple> selectByOrderListIDForActCom(Integer orderListID);
	
	public int update(Orders Orders);
	
	public Orders findByPrimaryKey(Integer orderID);
	
	public int cancelOrdType(Integer orderID);
	
	public int deleteReview(Integer orderListID);
}