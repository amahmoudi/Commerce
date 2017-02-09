package dao.domain;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.sun.org.apache.xpath.internal.operations.Quo;

import dao.HibernateUtil.HibernateUtil;
import dao.tables.Category;
import dao.tables.Config;

public class ConfigDao {
	HibernateUtil util = new HibernateUtil();

	public List ShowAll() {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Config> config = new ArrayList<Config>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Config");
			config = query.list();
			transaction.commit();

		} catch (HibernateException e) {
			System.out.println("Exception Inside Config Dao");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return config;
	}

	public void delete(int id) {
		Session session = util.getSessionfactory().openSession();
		try {
			Query query = session.createQuery("delete Config where id = :id");
			query.setParameter("id", id);
			int result = query.executeUpdate();

		} catch (HibernateException e) {
			e.toString();
		} finally {
			session.close();
		}
	}

	public void addConfig(Config config) {
		Session session = util.getSessionfactory().openSession();
		try {
			session.save(config);

		} catch (HibernateException e) {
			e.toString();
		} finally {
			session.close();
		}
	}

	public void updateConfig(Config config) {
		Session session = util.getSessionfactory().openSession();
		try {
			Query query = session
					.createQuery("update Config set storename = :storename, storeurl = :storeurl, ordernoticeemail = :ordernoticeemail, cursymbol = :cursymbol, curcode = :curcode, aboutustext = :aboutustext, shipdeltext = :shipdeltext where id = :id");
			query.setParameter("storename", config.getStorename());
			query.setParameter("storeurl", config.getStoreurl());
			query
					.setParameter("ordernoticeemail", config
							.getOrdernoticeemail());
			query.setParameter("cursymbol", config.getCursymbol());
			query.setParameter("curcode", config.getCurcode());
			query.setParameter("aboutustext", config.getAboutustext());
			query.setParameter("shipdeltext", config.getShipdeltext());
			query.setParameter("id", config.getId());
			query.executeUpdate();
		} catch (HibernateException e) {
			e.toString();
		} finally {
			session.close();
		}
	}

	public Config search(int id) {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		Config model = new Config();
		List<Config> config = new ArrayList<Config>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Config where id = :id");
			query.setParameter("id", id);
			config = query.list();
			for (Iterator iterator = config.iterator(); iterator.hasNext();) {
				model = (Config) iterator.next();
			}

		} catch (HibernateException e) {
			System.out.println("Exception Inside Category Dao");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}

		return model;
	}
}