package bakiTech.action.user;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.UserDao;
import dao.tables.User;

public class DeleteUser extends ActionSupport implements ModelDriven<User> {
	ActionContext context = ActionContext.getContext();
	HttpServletRequest request = (HttpServletRequest) context
			.get(ServletActionContext.HTTP_REQUEST);
	UserDao dao = new UserDao();

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		int userId = Integer.parseInt(id);
		dao.deleteUser(userId);
		return SUCCESS;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return null;
	}
}