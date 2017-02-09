package bakiTech.action.user;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.domain.UserDao;
import dao.tables.User;

public class ViewUser extends ActionSupport {
	UserDao dao = new UserDao();
	List<User> user = new ArrayList<User>();
	ActionContext context = ActionContext.getContext();
	HttpServletRequest request = (HttpServletRequest) context
			.get(ServletActionContext.HTTP_REQUEST);
	HttpServletResponse response = (HttpServletResponse) context
			.get(ServletActionContext.HTTP_RESPONSE);

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		user = dao.showAll();
		setUser(user);
		return SUCCESS;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}
}