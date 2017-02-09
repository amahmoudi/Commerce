package bakiTech.action.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.AdminUserDao;
import dao.tables.Adminuser;

public class AdminUserAction extends ActionSupport implements
	ModelDriven<Adminuser> {
	Adminuser model;
	AdminUserDao dao = new AdminUserDao();
	List<Adminuser> list = new ArrayList<Adminuser>();
	ActionContext context = ActionContext.getContext();
	Map<String, Object> session = null;

	//test tst;

	@Override
	public String execute() throws Exception {
		list = dao.findUser(model);
		if (model.getUserid().length() == 0) {
			addFieldError("userid", "User ID is required.");
		}
		if (model.getPassword().length() == 0) {
			addFieldError("password", "Password is required.");
		} else if (list.size() == 1) {
			//tst=new test(model, dao);
			session = context.getSession();
			session.put("loggerAdmin", model.getUserid());
			return SUCCESS;
		} else {
			addActionError("You are not a valid user.");
			return INPUT;
		}
		return INPUT;
	}
	public Adminuser getModel() {
		model = new Adminuser();
		return model;
	}
}