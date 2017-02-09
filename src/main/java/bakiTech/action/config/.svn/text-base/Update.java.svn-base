package bakiTech.action.config;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.ConfigDao;
import dao.tables.Config;

public class Update extends ActionSupport implements ModelDriven<Config>{
	Config model;
	ConfigDao dao=new ConfigDao();
	ActionContext context=ActionContext.getContext();
	HttpServletRequest request=(HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
	String configId=request.getParameter("id");
	int id=Integer.parseInt(configId);
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
	@Override
	public Config getModel() {
		// TODO Auto-generated method stub
		model=dao.search(id);
		return model;
	}
}