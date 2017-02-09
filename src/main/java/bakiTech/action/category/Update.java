package bakiTech.action.category;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.CategoryDao;
import dao.tables.Category;

public class Update extends ActionSupport implements ModelDriven<Category>{
	
	ActionContext context=ActionContext.getContext();
	HttpServletRequest request=(HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
	Category category=new Category();
	CategoryDao dao=new CategoryDao();
	String catId=request.getParameter("id");
	int categoryId=Integer.parseInt(catId);
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
	
	
	@Override
	public Category getModel() {
		// TODO Auto-generated method stub
		category=dao.viewCategory(categoryId);
		return category;
	}
}