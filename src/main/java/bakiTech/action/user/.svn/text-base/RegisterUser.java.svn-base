package bakiTech.action.user;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.UserDao;
import dao.tables.User;

public class RegisterUser extends ActionSupport implements ModelDriven<User> {

	User model;
	UserDao dao = new UserDao();
	Map session;
	ActionContext context = ActionContext.getContext();

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if (model.getUserid().equals("")) {
			addFieldError("userid", getText("userid"));
			return INPUT;
		}
		if (model.getPassword().equals("")) {
			addFieldError("password", getText("password"));
			return INPUT;
		} else if (model.getFirstname().equals("")) {
			addFieldError("firstname", getText("firstname"));
			return INPUT;
		} else if (model.getLastname().equals("")) {
			addFieldError("lastname", getText("lastname"));
			return INPUT;
		} else if (model.getEmail().equals("")) {
			addFieldError("email", getText("email"));
			return INPUT;
		} else if (model.getCountry().equals("")) {
			addFieldError("country", getText("country"));
			return INPUT;
		} else if (model.getZip().equals("")) {
			addFieldError("zip", getText("zip"));
			return INPUT;
		} else if (model.getZip().equals("")) {
			addFieldError("zip", getText("zip"));
			return INPUT;
		}else if (model.getState().equals("")) {
			addFieldError("state", getText("state"));
			return INPUT;
		} else if (model.getCity().equals("")) {
			addFieldError("city", getText("city"));
			return INPUT;
		} else if (model.getAddress().equals("")) {
			addFieldError("address", getText("address"));
			return INPUT;
		} else if (model.getPhone().equals("")) {
			addFieldError("phone", getText("phone"));
			return INPUT;
		}else if (model.getFax().equals("")) {
			addFieldError("fax", getText("fax"));
			return INPUT;
		}else {
			dao.addUser(model);
			session = context.getSession();
			session.put("loggedUser", model.getFirstname());
			return SUCCESS;
		}
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		model = new User();
		return model;
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub

		if ("".equals(model.getFirstname())) {
			addFieldError("firstname", getText("firstname"));
		}
		super.validate();
	}
}