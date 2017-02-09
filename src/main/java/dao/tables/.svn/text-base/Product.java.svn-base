package dao.tables;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "product")
public class Product implements Serializable {
	@Id
	@GeneratedValue
	
    /** identifier field */
    private Integer productid;

	/** persistent field */
    private String categoryname;

    /** persistent field */
    private String productname;
   
	/** persistent field */
    private String productprice;

    /** persistent field */
    private String listprice;

    /** persistent field */
    private String userImage;

	/** persistent field */
    private String quantity;

    /** persistent field */
    private String description;

    /** nullable persistent field */
    private String briefdisc;


    /** default constructor */
    public Product() {
    }
    
    /** full constructor */
    public Product(Integer productid, String categoryname, String productname, String productprice, String listprice, String imagename, String quantity, String description, String briefdisc) {
        this.productid = productid;
        this.categoryname = categoryname;
        this.productname = productname;
        this.productprice = productprice;
        this.listprice = listprice;
        this.userImage = imagename;
        this.quantity = quantity;
        this.description = description;
        this.briefdisc = briefdisc;
    }
    
    @Column(name = "productid")
    public Integer getProductid() {
        return this.productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }
    
    @Column(name = "categoryname")
    public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	@Column(name = "productname")
    public String getProductname() {
        return this.productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }
    
    @Column(name = "productprice")
    public String getProductprice() {
        return this.productprice;
    }

    public void setProductprice(String productprice) {
        this.productprice = productprice;
    }
    
    @Column(name = "listprice")
    public String getListprice() {
        return this.listprice;
    }

    public void setListprice(String listprice) {
        this.listprice = listprice;
    }
    
    @Column(name = "userImage")
    public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
    
//    public String getImagename() {
//        return this.imagename;
//    }
//
//    public void setImagename(String imagename) {
//        this.imagename = imagename;
//    }
    @Column(name = "quantity")
    public String getQuantity() {
        return this.quantity;
    }

	public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
  
    @Column(name = "description")
    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    @Column(name = "briefdisc")
    public String getBriefdisc() {
        return this.briefdisc;
    }
    public void setBriefdisc(String briefdisc) {
        this.briefdisc = briefdisc;
    }   
}
