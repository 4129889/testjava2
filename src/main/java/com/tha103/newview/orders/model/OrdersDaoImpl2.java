package com.tha103.newview.orders.model;

import java.util.List;

import org.hibernate.Session;

import com.tha103.util.HibernateUtil;

public class OrdersDaoImpl2 implements OrdersDao2 {

	@Override
	public List<Orders> selectByUserID(Integer userID) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			return session.createQuery("FROM Orders WHERE userID = :userID", Orders.class)
					.setParameter("userID", userID)
					.list();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}
	public int update(Orders Orders) {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.update(Orders);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;

	}
	@Override
	public Orders findByPrimaryKey(Integer orderID) {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Orders ordersHibernateVO = session.get(Orders.class, orderID);
			session.getTransaction().commit();
			return ordersHibernateVO;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;

	}
}
