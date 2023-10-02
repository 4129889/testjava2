package com.tha103.newview.postmessage.model;

import java.sql.Timestamp;
import java.util.List;
import org.hibernate.Session;
import com.tha103.util.HibernateUtil;

public class PostMessageHibernate implements PostMessageDAO_interface {

	@Override
	public int add(PostMessageVO PostMessageVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Integer id = (Integer) session.save(PostMessageVO);
			session.getTransaction().commit();
			return id;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public int update(PostMessageVO PostMessageVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.update(PostMessageVO);
			session.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public int delete(Integer postMessageID) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			PostMessageVO postmessage = session.get(PostMessageVO.class, postMessageID);
			if (postmessage != null) {
				session.delete(postmessage);
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
	public PostMessageVO findByPK(Integer postMessageID) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			PostMessageVO postcategory = session.get(PostMessageVO.class, postMessageID);
			session.getTransaction().commit();
			return postcategory;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;
	}

	@Override
	public List<PostMessageVO> getAll() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			List<PostMessageVO> list = session.createQuery("from PostMessageVO", PostMessageVO.class).list();
			session.getTransaction().commit();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;
	}

	public static void main(String[] args) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		PostMessageDAO_interface dao = new PostMessageHibernate();

		// Insert
		PostMessageVO msg1 = new PostMessageVO();
		msg1.setPostID(1);
		msg1.setUserID(2);
		msg1.setMesContent("TestA");
		msg1.setMessageDate(new Timestamp(System.currentTimeMillis()));
		dao.add(msg1);
		System.out.println("Success!");

		// Update
		PostMessageVO msg2 = new PostMessageVO();
		msg2.setPostMessageID(1);
		msg2.setPostID(1);
		msg2.setUserID(2);
		msg2.setMesContent("TestB");
		msg2.setMessageDate(new Timestamp(System.currentTimeMillis()));
		dao.update(msg2);
		System.out.println("Success!");

		// Delete
		dao.delete(5);
		System.out.println("Success!");

		// FindByPK
		PostMessageVO msg3 = new PostMessageHibernate().findByPK(1);
		System.out.println(msg3);

		// ListAll
		List<PostMessageVO> list = new PostMessageHibernate().getAll();
		System.out.println(list);

	}

}
