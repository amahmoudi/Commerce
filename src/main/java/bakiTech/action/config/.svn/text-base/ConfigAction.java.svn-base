package bakiTech.action.config;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dao.domain.ConfigDao;
import dao.tables.Config;

public class ConfigAction extends ActionSupport implements ModelDriven<Config> {

	Config model;
	ConfigDao dao = new ConfigDao();
	List<Config> configList = new ArrayList<Config>();
	ActionContext context = ActionContext.getContext();
	HttpServletRequest request = (HttpServletRequest) context
			.get(ServletActionContext.HTTP_REQUEST);

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		configList = dao.ShowAll();
		setConfigList(configList);
		return SUCCESS;
	}

	public String delete() {
		String configId = request.getParameter("id");
		int id = Integer.parseInt(configId);
		dao.delete(id);
		return "deleted";
	}

	public String addConfigForm() {
		return SUCCESS;
	}

	public String addConfig() {

		if (model.getStorename().length() == 0) {
			addFieldError("storename", "Store Name is required.");
		}
		if (model.getStoreurl().length() == 0) {
			addFieldError("storeurl", "Store URL is required.");

		}
		if (model.getOrdernoticeemail().length() == 0) {
			addFieldError("ordernoticeemail", "Order Notice Email is required.");

		}
		if (model.getCursymbol().length() == 0) {
			addFieldError("cursymbol", "Currency Symbol is required.");
		}

		if (model.getCursymbol().length() == 0) {
			addFieldError("curcode", "Currency Code is required.");

		}
		if (model.getAboutustext().length() == 0) {
			addFieldError("aboutustext", "About Us Code is required");
		}
		if (model.getShipdeltext().length() == 0) {
			addFieldError("shipdeltext", "Shipping Details is required");
			return INPUT;
		} else {
			dao.addConfig(model);
			return "added";
		}

	}

	public String update() {
		dao.updateConfig(model);
		return "updated";
	}

	public List<Config> getConfigList() {
		return configList;
	}

	public void setConfigList(List<Config> configList) {
		this.configList = configList;
	}

	@Override
	public Config getModel() {
		// TODO Auto-generated method stub
		model = new Config();
		return model;
	}

	public void setModel(Config model) {
		this.model = model;
	}

}