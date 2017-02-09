package dao.tables;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="orderitems")

/** @author Hibernate CodeGenerator */
public class Orderitems implements Serializable {
	@Id
	@GeneratedValue


	/** identifier field */
    private Integer orderid;
	
	/** identifier field */
    private Integer productid;
    
    /** nullable persistent field */
    private String name;

    /** nullable persistent field */
    private Float price;

    /** nullable persistent field */
    private Integer quantity;

    /** default constructor */
    public Orderitems() {
    }
    
    @Column(name="productid")
    public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	@Column(name="orderid")
	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	@Column(name="name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	@Column(name="price")
	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}
	@Column(name="quantity")
	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
}
