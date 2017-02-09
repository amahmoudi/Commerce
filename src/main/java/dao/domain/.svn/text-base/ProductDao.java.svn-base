package dao.domain;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.HibernateUtil.HibernateUtil;
import dao.tables.Product;

public class ProductDao {

	HibernateUtil util = new HibernateUtil();
	Product productDatail=new Product();

	public List showAll() {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Product> products = new ArrayList<Product>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Product");
			products = query.list();
			transaction.commit();
		} catch (HibernateException e) {
			System.out.println("Inside Catch");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return products;
	}

	public List search(int productId) {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Product> products = new ArrayList<Product>();

		try {
			System.out.println("Inside try");
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from Product where productid = :productid");
			query.setParameter("productid", productId);
			products = query.list();

			for (Iterator iterator = products.iterator(); iterator.hasNext();) {
				Product productDatail = (Product) iterator.next();
				System.out.println(productDatail.getProductname());
			}

			transaction.commit();
		} catch (Exception e) {
			System.out.println("Inside Catch");
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return products;
	}

	public void addProduct(Product product) {
		Session session = util.getSessionfactory().openSession();
		session.save(product);
	}
	
	public void deleteProduct(int id){
		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
				
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("delete Product where productid = :productid");
			query.setParameter("productid", id);
			int result=query.executeUpdate();
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
	
	public List<Product> SearchbyName(String name) {

		
		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Product> products = new ArrayList<Product>();

		try {
			
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from Product where productname like :productname");
			query.setParameter("productname", name + "%");
			products = query.list();

			for (Iterator iterator = products.iterator(); iterator.hasNext();) {
				Product productDatail = (Product) iterator.next();
				System.out.println(productDatail.getDescription());
			}

			transaction.commit();
		} catch (Exception e) {
			
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return products;
	}

//Search by category

	public List<Product> searchByCategory(String category) {
		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Product> products = new ArrayList<Product>();
		try {
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from Product where categoryname = :categoryname");
			query.setParameter("categoryname", category);
			products = query.list();
			transaction.commit();
		} catch (Exception e) {
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return products;
	}
	
	public Product searchProduct(int productId) {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Product> products = new ArrayList<Product>();
		Product productDatail = null;

		try {
			System.out.println("Inside try");
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from Product where productid = :productid");
			query.setParameter("productid", productId);
			products = query.list();

			for (Iterator iterator = products.iterator(); iterator.hasNext();) {
				productDatail = (Product) iterator.next();
			}

			transaction.commit();
		} catch (Exception e) {
			System.out.println("Inside Catch");
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return productDatail;
	}
	
	public void updateProduct(Product product){
		Session session = util.getSessionfactory().openSession();
		try{
			Query query=session.createQuery("update Product set categoryname = :categoryname, productname = :productname, productprice = :productprice, listprice = :listprice, userImage = :userImage, quantity = :quantity, description = :description, briefdisc = :briefdisc where productid = :productid");
			query.setParameter("categoryname", product.getCategoryname());
			query.setParameter("productname", product.getProductname());
			query.setParameter("productprice", product.getProductprice());
			query.setParameter("listprice", product.getListprice());
			query.setParameter("userImage", product.getUserImage());
			query.setParameter("quantity", product.getQuantity());
			query.setParameter("description", product.getDescription());
			query.setParameter("briefdisc", product.getBriefdisc());
			query.setParameter("productid", product.getProductid());
			query.executeUpdate();
		}
		catch(HibernateException e){
			e.printStackTrace();
		}
		finally{
			session.close();
		}
	}
	
	public void updateProductWithoutImage(Product product){
		Session session = util.getSessionfactory().openSession();
		
		try{
			Query query=session.createQuery("update Product set categoryname = :categoryname, productname = :productname, productprice = :productprice, listprice = :listprice, quantity = :quantity, description = :description, briefdisc = :briefdisc where productid = :productid");
			query.setParameter("categoryname", product.getCategoryname());
			query.setParameter("productname", product.getProductname());
			query.setParameter("productprice", product.getProductprice());
			query.setParameter("listprice", product.getListprice());
			query.setParameter("quantity", product.getQuantity());
			query.setParameter("description", product.getDescription());
			query.setParameter("briefdisc", product.getBriefdisc());
			query.setParameter("productid", product.getProductid());
			query.executeUpdate();
		}
		catch(HibernateException e){
			e.printStackTrace();
		}
		finally{
			session.close();
		}
	}
	
	
	
	public Product viewAll() {
		
		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Product> products = new ArrayList<Product>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Product");
			products = query.list();
			for (Iterator iterator = products.iterator(); iterator.hasNext();) {
				productDatail = (Product) iterator.next();
			}
			transaction.commit();
		} catch (HibernateException e) {
			System.out.println("Inside Catch");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return productDatail;
	}
	
}