package com.tha103.newview.user.service;

import java.util.List;

import com.tha103.newview.orders.model.OrdersVO;
import com.tha103.newview.user.model.UserVO;

public interface UserService {
	public boolean checkUserAccount(String account);
	public boolean checkUserAccount(String account, String password);
	public boolean checkUserAccountByEmail(String email);
	public int addUser(UserVO userVO);
	public int updateUser(UserVO userVO);
	public UserVO getUserByPK(int userID);
	public UserVO getUserByAccount(String account);
	public UserVO getUserByEmail(String email);
	public List<UserVO> getAll();
	public OrdersVO getOrderByUserID(Integer userID);
}
