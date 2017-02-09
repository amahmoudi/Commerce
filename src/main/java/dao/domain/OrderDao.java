package dao.domain;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.HibernateUtil.HibernateUtil;
import dao.tables.Order;
import dao.tables.Product;

public class OrderDao {
	
	static HibernateUtil util = new HibernateUtil();

	public List showAll() {

		Session session = util.getSessionfactory().openSession();
		
		Transaction transaction = null;
		List<Order> order = new ArrayList<Order>();
		try {
			transaction = session.beginTransaction();
			Query query=session.createQuery("from Order");
			order=query.list();
			transaction.commit();
		} catch (Exception e) {
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return order;
	}

	
	public void placeOrder(Order order) {
		Session session = util.getSessionfactory().openSession();
		session.save(order);
	}
	
	public Object selectCurrent(){
		Session session = util.getSessionfactory().openSession();
		int id = 0;
		List list = null;
		try{
			String SQL_QUERY = "select max(id)from Order";
			Query query = session.createQuery(SQL_QUERY);
			list = query.list();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return list.get(0);
	}
	
}