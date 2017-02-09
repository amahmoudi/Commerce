package bakiTech.action.product;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.StringTokenizer;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;

import dao.domain.CategoryDao;
import dao.domain.ProductDao;
import dao.tables.Product;

@Validation
public class UpdateProduct extends ActionSupport implements
		ModelDriven<Product>, ServletRequestAware {
	List<String> category = new ArrayList<String>();
	CategoryDao categoryDao = new CategoryDao();

	Product model;
	private File userImage;
	private String userImageContentType;
	private String userImageFileName = "";
	private HttpServletRequest servletRequest;
	ProductDao dao = new ProductDao();

	private Integer productid;

	private String categoryname;

	private String productname;

	private String productprice;

	private String listprice;

	private String quantity;

	private String description;

	private String briefdisc;

	public UpdateProduct() {
		category = categoryDao.showCategoryName();

	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub

		try {
			if (userImageFileName != "") {
				ServletContext context = ServletActionContext
						.getServletContext();
				String path = context.getRealPath("uploadedImage/");
				Random random = new Random(9000);
				System.out.println(random);

				userImageFileName = randnum + removeSpaces(userImageFileName);
				File fileToCreate = new File(path, this.userImageFileName);
				FileUtils.copyFile(this.userImage, fileToCreate);
				dao.updateProduct(getModel());
				return SUCCESS;
			} else {
				dao.updateProductWithoutImage(getModel());
				return SUCCESS;
			}

		} catch (Exception e) {
			e.printStackTrace();
			addActionError(e.getMessage());
			System.out.println("Returning.....................");
			return SUCCESS;
		}
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	@Override
	public Product getModel() {
		// TODO Auto-generated method stub
		model = new Product();
		model.setCategoryname(categoryname);
		model.setUserImage(userImageFileName);
		model.setProductname(productname);
		model.setProductprice(productprice);
		model.setListprice(listprice);
		model.setQuantity(quantity);
		model.setDescription(description);
		model.setBriefdisc(briefdisc);
		model.setProductid(productid);
		return model;
	}

	public String removeSpaces(String s) {
		StringTokenizer st = new StringTokenizer(s, " ", false);
		String t = "";
		while (st.hasMoreElements())
			t += st.nextElement();
		return t;
	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		// TODO Auto-generated method stub
		this.servletRequest = servletRequest;
	}

	Random rand = new Random();
	static int num = 100;
	int randnum = rand.nextInt(num + 1);

	public String displayCategory() {

		return "display";
	}

	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	@RequiredStringValidator(fieldName = "productname", message = "", key = "error")
	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	@RequiredStringValidator(fieldName = "productprice", message = "", key = "error")
	public String getProductprice() {
		return productprice;
	}

	public void setProductprice(String productprice) {
		this.productprice = productprice;
	}

	@RequiredStringValidator(fieldName = "listprice", message = "", key = "error")
	public String getListprice() {
		return listprice;
	}

	public void setListprice(String listprice) {
		this.listprice = listprice;
	}

	@RequiredStringValidator(fieldName = "quantity", message = "", key = "error")
	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	@RequiredStringValidator(fieldName = "description", message = "", key = "error")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@RequiredStringValidator(fieldName = "briefdisc", message = "", key = "error")
	public String getBriefdisc() {
		return briefdisc;
	}

	public void setBriefdisc(String briefdisc) {
		this.briefdisc = briefdisc;
	}

	public List<String> getCategory() {
		return category;
	}

	public void setCategory(List<String> category) {
		this.category = category;
	}

}