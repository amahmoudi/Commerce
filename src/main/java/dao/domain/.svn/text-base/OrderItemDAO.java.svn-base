package dao.domain;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.HibernateUtil.HibernateUtil;
import dao.tables.Orderitems;

public class OrderItemDAO {

	HibernateUtil util = new HibernateUtil();

	public List showAll() {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Orderitems> orderitems = new ArrayList<Orderitems>();
		try {
			System.out.println("Inside Try");
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Orderitems");
			orderitems = query.list();
			transaction.commit();
		} catch (HibernateException e) {
			System.out.println("Inside Order Item Catch");
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return orderitems;
	}
	
	public void placeOrder(Orderitems orderItems) {
		Session session = util.getSessionfactory().openSession();
		try{
			session.save(orderItems);
		}catch(HibernateException e){
			e.printStackTrace();
			
		}
		finally{
			session.close();
		}
	}
	
}
