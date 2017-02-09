package bakiTech.action.product;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.ProductDao;
import dao.tables.Product;

public class DeleteProduct extends ActionSupport implements
		ModelDriven<Product> {
	Product model;
	ProductDao dao = new ProductDao();
	ActionContext context = ActionContext.getContext();
	HttpServletRequest request = (HttpServletRequest) context
			.get(ServletActionContext.HTTP_REQUEST);
		
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String productId = request.getParameter("id");
		int id = Integer.parseInt(productId);
		System.out.println(id);
		dao.deleteProduct(id);
		return SUCCESS;
	}

	@Override
	public Product getModel() {
		// TODO Auto-generated method stub
		model = new Product();
		return model;
	}
}