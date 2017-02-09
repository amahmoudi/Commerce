package bakiTech.action.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import bakiTech.model.LoginModel;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.UserDao;
import dao.tables.User;

public class UserAction extends ActionSupport implements
		ModelDriven<LoginModel> {
	LoginModel model;
	UserDao dao = new UserDao();
	List<User> list = new ArrayList<User>();
	Map list1 = new HashMap();
	String userId;
	String userName;
	String password;
	int id;
	ActionContext context = ActionContext.getContext();
	HttpServletRequest request = (HttpServletRequest) context
			.get(ServletActionContext.HTTP_REQUEST);
	HttpServletResponse response = (HttpServletResponse) context
			.get(ServletActionContext.HTTP_RESPONSE);
	Map<String, Object> session;

	@Override
	public String execute() throws Exception {
		list = dao.findUser(model);
		
		User user=new User();
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			user = (User) iterator.next();
		}
		
		String userFirstName=user.getFirstname();
		
		
		if (model.getUserId().length() == 0) {
			addFieldError("userId", "User ID is required.");
		}
		if (model.getPassword().length() == 0) {
			addFieldError("password", "Password is required.");
		} else if (list.size() == 1) {
			session = context.getSession();
			session.put("loggedUser", userFirstName);
			session.put("id",user.getId());
			return SUCCESS;
		} else {
			addActionError("You are not a valid user.");
			return INPUT;
		}
		return INPUT;
	}

	public LoginModel getModel() {
		model = new LoginModel();
		return model;
	}

}