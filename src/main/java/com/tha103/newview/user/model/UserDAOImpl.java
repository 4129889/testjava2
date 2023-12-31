package com.tha103.newview.user.model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.tha103.newview.orders.model.OrdersVO;
import com.tha103.util.HibernateUtil;
import com.tha103.util.Util;

public class UserDAOImpl implements UserDAO {

	@Override
	public int insert(UserVO userVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		int userID = 0;

		try {
			session.beginTransaction();
//			session.saveOrUpdate(userVO);
			userID = (int) session.save(userVO);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return userID;
	}

	@Override
	public int update(UserVO userVO) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			session.update(userVO);
			session.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public int delete(Integer userID) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			UserVO user = session.get(UserVO.class, userID);
			if (user != null) {
				session.delete(user);
			}
			session.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public UserVO findByPrimaryKey(Integer userID) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			UserVO user = session.get(UserVO.class, userID);
			session.getTransaction().commit();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return null;
	}

	@Override
	public List<UserVO> getAll() {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			List<UserVO> list = session.createQuery("from UserVO", UserVO.class).list();
			session.getTransaction().commit();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;
	}

	@Override
	public boolean checkUserAccount(String account) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();

			String sql = "from UserVO WHERE userAccount = :userAccount ";
			UserVO user = (UserVO) session.createQuery(sql).setParameter("userAccount", account).uniqueResult();

			System.out.println(user);

			// 若不存在使用者帳號為 null -> 回傳 false
			if (user == null) {
				session.getTransaction().commit();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		// 若存在使用者帳號查得到值-> 回傳 true
		session.getTransaction().commit();
		return true;
	}

	@Override
	public boolean checkUserAccount(String account, String password) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		String userPassword;

		try {
			session.beginTransaction();

			String sql = "from UserVO WHERE userAccount = :userAccount ";
			UserVO user = (UserVO) session.createQuery(sql).setParameter("userAccount", account).uniqueResult();

			// 檢查是否有取得物件
//			System.out.println(user);

			// 若不存在使用者帳號為 null -> 回傳 true
			if (user != null) {
				// userAccount 已確認 DB 中有此筆資料不需再用變數存放
				// 判斷 userPassword 是否一致，比對正確回傳 true
				userPassword = user.getUserPassword();

				if (!password.equals(userPassword)) {
					// 傳入密碼與 DB 中密碼不一致 -> 回傳 false
					return false;
				}

				// 比對完成 -> 回傳 true
				session.getTransaction().commit();
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		// 若使用者不存在得不到值 -> 回傳 false
		session.getTransaction().commit();
		return false;
	}

	@Override
	public UserVO getUserByAccount(String account) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();

			String sql = "from UserVO WHERE userAccount = :userAccount ";
			UserVO userVO = (UserVO) session.createQuery(sql).setParameter("userAccount", account).uniqueResult();
			session.getTransaction().commit();

			return userVO;
		} catch (Exception e) {
			session.getTransaction().rollback();

		}
		session.getTransaction().commit();
		return null;
	}

	@Override
	public OrdersVO getOrderByUserID(Integer userID) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();

			String sql = "from OrdersVO WHERE userID = :userID ";
			OrdersVO ordersVO = (OrdersVO) session.createQuery(sql).setParameter("userID", userID).uniqueResult();
			session.getTransaction().commit();

			return ordersVO;
		} catch (Exception e) {
			session.getTransaction().rollback();

		}
		session.getTransaction().commit();
		return null;
	}

	@Override
	public boolean checkUserAccountByEmail(String email) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();

			String sql = "from UserVO WHERE userEmail = :userEmail";
			UserVO user = (UserVO) session.createQuery(sql).setParameter("userEmail", email).uniqueResult();

//			System.out.println(user);

			// 若不存在使用者為 null -> 回傳 false
			if (user == null) {
				session.getTransaction().commit();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		// 若存在使用者查得到值-> 回傳 true
		session.getTransaction().commit();
		return true;
	}

	@Override
	public UserVO getUserByEmail(String email) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();

			String sql = "from UserVO WHERE userEmail = :userEmail ";
			UserVO userVO = (UserVO) session.createQuery(sql).setParameter("userEmail", email).uniqueResult();
			session.getTransaction().commit();

			return userVO;
		} catch (Exception e) {
			session.getTransaction().rollback();

		}
		session.getTransaction().commit();
		return null;
	}
}
