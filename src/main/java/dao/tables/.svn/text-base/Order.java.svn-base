package dao.tables;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table (name="orders")
public class Order implements Serializable {
	@Id
	@GeneratedValue
	
    /** identifier field */
    private Integer orderid;

    /** nullable persistent field */
    private Date ordertime;

    /** nullable persistent field */
    private String custfirstname;

    /** nullable persistent field */
    private String custlastname;

    /** nullable persistent field */
    private String custemail;

    /** nullable persistent field */
    private String custcountry;

    /** nullable persistent field */
    private String custzip;

    /** nullable persistent field */
    private String custstate;

    /** nullable persistent field */
    private String custcity;

    /** nullable persistent field */
    private String custaddress;
    /** nullable persistent field */
    private String custphone;
    /** nullable persistent field */
    private Integer custfax;    
    

    /** full constructor */
    public Order(Integer orderid, Date ordertime, String custfirstname, String custlastname, String custemail, String custcountry, String custzip, String custstate, String custcity, String custaddress, String custphone, Integer custfax) {
        this.orderid = orderid;
        this.ordertime = ordertime;
        this.custfirstname = custfirstname;
        this.custlastname = custlastname;
        this.custemail = custemail;
        this.custcountry = custcountry;
        this.custzip = custzip;
        this.custstate = custstate;
        this.custcity = custcity;
        this.custaddress = custaddress;
        this.custphone = custphone;
        this.custfax = custfax;       
        
    }
    
    /** default constructor */
    public Order() {
    }

    /** minimal constructor */
    public Order(Integer orderid) {
        this.orderid = orderid;
    }
    @Column(name="orderid")
    public Integer getOrderid() {
        return this.orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }
    @Column(name="ordertime")
    public Date getOrdertime() {
        return this.ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }
    @Column(name="custfirstname")
    public String getCustfirstname() {
        return this.custfirstname;
    }
    
    public void setCustfirstname(String custfirstname) {
        this.custfirstname = custfirstname;
    }
    @Column(name="custlastname")
    public String getCustlastname() {
        return this.custlastname;
    }

    public void setCustlastname(String custlastname) {
        this.custlastname = custlastname;
    }
    @Column(name="custemail")
    public String getCustemail() {
        return this.custemail;
    }

    public void setCustemail(String custemail) {
        this.custemail = custemail;
    }
    @Column(name="custcountry")
    public String getCustcountry() {
        return this.custcountry;
    }

    public void setCustcountry(String custcountry) {
        this.custcountry = custcountry;
    }
    @Column(name="custzip")
    public String getCustzip() {
        return this.custzip;
    }

    public void setCustzip(String custzip) {
        this.custzip = custzip;
    }
    @Column(name="custstate")
    public String getCuststate() {
        return this.custstate;
    }

    public void setCuststate(String custstate) {
        this.custstate = custstate;
    }
    @Column(name="custcity")
    public String getCustcity() {
        return this.custcity;
    }

    public void setCustcity(String custcity) {
        this.custcity = custcity;
    }
    @Column(name="custaddress")
    public String getCustaddress() {
        return this.custaddress;
    }

    public void setCustaddress(String custaddress) {
        this.custaddress = custaddress;
    }
    @Column(name="custphone")
    public String getCustphone() {
        return this.custphone;
    }

    public void setCustphone(String custphone) {
        this.custphone = custphone;
    }
    @Column(name="custfax")
    public Integer getCustfax() {
        return this.custfax;
    }

    public void setCustfax(Integer custfax) {
        this.custfax = custfax;
    }
}
