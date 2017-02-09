package dao.domain;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.HibernateUtil.HibernateUtil;
import dao.tables.Forum;

public class ForumDao {
	Session session = null;
	Transaction transaction = null;
	HibernateUtil util = new HibernateUtil();
	public List showAll() {
		session = HibernateUtil.getSessionfactory().openSession();
		List forum = new ArrayList<Forum>();
		try {
			transaction = session.beginTransaction();
			forum = session.createQuery("from Forum").list();
			transaction.commit();
		} catch (Exception e) {
			e.toString();
		} finally {
			session.close();
		}
		return forum;
	}

	public List findInForum(int id) {
		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Forum> forum = new ArrayList<Forum>();

		try {
			System.out.println("Inside try");
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from Forum where id = :id");
			query.setParameter("id", id);
			forum = query.list();

			for (Iterator iterator = forum.iterator(); iterator.hasNext();) {
				Forum forumDetails = (Forum) iterator.next();
				System.out.println(forumDetails.getMessage());
			}

			transaction.commit();
		} catch (Exception e) {
			System.out.println("Inside Catch");
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return forum;
	}

	public void addNewMsg(Forum forum) {
		session = HibernateUtil.getSessionfactory().openSession();
		session.save(forum);
	}

	public void deleteMessage(int id) {

		session = HibernateUtil.getSessionfactory().openSession();
		Transaction transaction = null;

		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("delete Forum where id = :id");
			query.setParameter("id", id);
			transaction.commit();

		} catch (Exception e) {
			System.out.println("Inside Catch");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
	}

	public List searchInForum(int ForumId) {
		session = HibernateUtil.getSessionfactory().openSession();
		Transaction transaction = null;
		List forum = new ArrayList<Forum>();
		System.out.println("Id" + ForumId);

		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from User where id = :userId");
			query.setParameter("userId", ForumId);
			forum = query.list();
			transaction.commit();
		} catch (Exception e) {
			System.out.println("Inside Catch");
			e.printStackTrace();
		} finally {
			session.close();
		}
		return forum;
	}


}
