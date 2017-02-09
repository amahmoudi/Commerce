package bakiTech.action.forum;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.domain.ForumDao;
import dao.tables.Forum;

public class ForumAction extends ActionSupport implements
ModelDriven<Forum> {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
Forum model;
ForumDao dao = new ForumDao();
List<Forum> list = new ArrayList<Forum>();
ActionContext context = ActionContext.getContext();
Map<String, Object> session = null;

//test tst;

@Override
public String execute() throws Exception {
	int id = model.getId();;
	ForumDao dao = new ForumDao();
	List forum = new ArrayList<Forum>();
	forum = dao.findInForum(id);
	return "SUCCESS";
}
public Forum getModel() {
	model = new Forum();
	return model;
}
}