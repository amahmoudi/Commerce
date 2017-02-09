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

public class Update extends ActionSupport implements ModelDriven<Product>{
	Product model;
	ProductDao dao=new ProductDao();
	CategoryDao categoryDao=new CategoryDao();
	ActionContext context=ActionContext.getContext();
	HttpServletRequest request=(HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
	String prosuctId=request.getParameter("id");
	List<String> category=new ArrayList<String>();
	int id=Integer.parseInt(prosuctId);
	
	public Update(){
		category=categoryDao.showCategoryName();
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
	@Override
	public Product getModel() {
		// TODO Auto-generated method stub
		model=dao.searchProduct(id);
		return model;
	}
	
	public List<String> getCategory() {
		return category;
	}

	public void setCategory(List<String> category) {
		this.category = category;
	}
}