package com.tha103.newview.orders.model;

import java.util.List;

public interface OrdersDAO {
	
	public int insert(OrdersVO OrdersVO);
    public int update(OrdersVO OrdersVO);
    public int delete(Integer orderID);
    public OrdersVO findByPrimaryKey(Integer orderID);
    public List<OrdersVO> getAll();
          
//  萬用複合查詢(傳入參數型態Map)(回傳List)
//  public List<OrdersVO> getAll(Map<String, String[]> map);
    
}