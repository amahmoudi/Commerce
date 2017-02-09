package bakiTech.action.product;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.CategoryDao;
import dao.domain.ProductDao;
import dao.tables.Product;

public class SearchProduct extends ActionSupport implements
		ModelDriven<Product> {

	Product model;
	ProductDao dao = new ProductDao();
	CategoryDao categoryDao = new CategoryDao();
	List products = new ArrayList<Product>();
	List<String> category = new ArrayList<String>();
	ActionContext context = ActionContext.getContext();
	HttpServletRequest request = (HttpServletRequest) context
			.get(ServletActionContext.HTTP_REQUEST);
	String productName = request.getParameter("productName");
	String productCat = request.getParameter("categor");

	public SearchProduct(){
		category=categoryDao.showCategoryName();
	}
	
	public List<String> getCategory() {
		return category;
	}

	public void setCategory(List<String> category) {
		this.category = category;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		products = dao.showAll();
		request.setAttribute("products", products);
		setProducts(products);
		return SUCCESS;
	}

	public List getProducts() {
		return products;
	}

	public void setProducts(List products) {
		this.products = products;
	}

	public String searchByCategory() {
		products = dao.searchByCategory(productCat);
		request.setAttribute("products", products);
		setProducts(products);
		return SUCCESS;
	}

	public String SearchbyName() {
		products = dao.SearchbyName(productName);
		request.setAttribute("products", products);
		setProducts(products);
		return SUCCESS;
	}

	@Override
	public Product getModel() {
		// TODO Auto-generated method stub
		model = new Product();
		return model;
	}
}
