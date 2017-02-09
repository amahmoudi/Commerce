package dao.domain;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.HibernateUtil.HibernateUtil;
import dao.tables.Cities;

public class CitiesDao {

	HibernateUtil util = new HibernateUtil();

	public List showCities() {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List cities = new ArrayList<Cities>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Cities");
			cities = query.list();
			transaction.commit();
		} catch (HibernateException e) {
			System.out.println("Exception Inside Cities Dao");
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return cities;
	}

}