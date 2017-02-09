package bakiTech.action.orderItems;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.OrderItemDAO;
import dao.tables.Orderitems;

public class OrderItems extends ActionSupport implements ModelDriven<Orderitems>{
	
	public OrderItems(){
		setOrderitems(orderitems);
	}
	OrderItemDAO dao=new OrderItemDAO();
	Orderitems model;
	List<Orderitems> orderitems=new ArrayList<Orderitems>();
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		orderitems=dao.showAll();
		setOrderitems(orderitems);
		return SUCCESS;
	}
	
	public List<Orderitems> getOrderitems() {
		return orderitems;
	}

	public void setOrderitems(List<Orderitems> orderitems) {
		this.orderitems = orderitems;
	}

	@Override
	public Orderitems getModel() {
		// TODO Auto-generated method stub
		model=new Orderitems();
		return model;
	}
}