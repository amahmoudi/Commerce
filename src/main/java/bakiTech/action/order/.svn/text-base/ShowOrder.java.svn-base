package bakiTech.action.order;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.OrderDao;
import dao.tables.Order;

public class ShowOrder extends ActionSupport implements ModelDriven<Order>{
	
	Order model;
	OrderDao dao=new OrderDao();
	List<Order> order=new ArrayList<Order>();
	
	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		order=dao.showAll();
		setOrder(order);
		return super.execute();
	}
	
	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		model=new Order();
		return model;
	}
}