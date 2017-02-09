package dao.domain;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import bakiTech.model.LoginModel;
import dao.HibernateUtil.HibernateUtil;
import dao.tables.User;


public class UserDao {
	Session session = null;
	Transaction transaction = null;

	public List showAll() {
		session = HibernateUtil.getSessionfactory().openSession();
		List users = new ArrayList<User>();
		try {
			transaction = session.beginTransaction();
			users = session.createQuery("from User").list();
			transaction.commit();
		} catch (Exception e) {
			e.toString();
		} finally {
			session.close();
		}
		return users;
	}

	public List findUser(LoginModel user) {
		String loginId = user.getUserId();
		String password = user.getPassword();
		session = HibernateUtil.getSessionfactory().openSession();
		List users = new ArrayList<User>();
		try {
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from User where userid = :loginId and password = :password");
			query.setParameter("loginId", loginId);
			query.setParameter("password", password);
			users = query.list();
			transaction.commit();
		} catch (Exception e) {
			e.toString();
		} finally {
			session.close();
		}
		return users;
	}

	public void addUser(User user) {
		session = HibernateUtil.getSessionfactory().openSession();
		session.save(user);
	}

	public void deleteUser(int id) {

		session = HibernateUtil.getSessionfactory().openSession();
		Transaction transaction = null;

		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("delete User where id = :id");
			query.setParameter("id", id);
			int result = query.executeUpdate();
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

	public List searchUser(int userId) {
		session = HibernateUtil.getSessionfactory().openSession();
		Transaction transaction = null;
		ArrayList<User> user = new ArrayList<User>();
		System.out.println("Id" + userId);

		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from User where id = :userId");
			query.setParameter("userId", userId);
			user = (ArrayList<User>) query.list();
			transaction.commit();
		} catch (Exception e) {
			System.out.println("Inside Catch");
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}
}