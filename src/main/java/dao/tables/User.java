package dao.tables;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
/** @author Hibernate CodeGenerator */
public class User implements Serializable {
	@Id
	@GeneratedValue
	/** identifier field */
	private Integer id;

	/** persistent field */
	private String userid;

	/** persistent field */
	private String password;

	/** nullable persistent field */
	private String firstname;

	/** nullable persistent field */
	private String lastname;

	/** nullable persistent field */
	private String email;

	/** nullable persistent field */
	private String country;

	/** nullable persistent field */
	private String zip;

	/** nullable persistent field */
	private String state;

	/** nullable persistent field */
	private String city;

	/** nullable persistent field */
	private String address;

	/** nullable persistent field */
	private String phone;

	/** nullable persistent field */
	private Integer fax;

	@Column(name = "id")
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "userid")
	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Column(name = "password")
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "firstname")
	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	@Column(name = "lastname")
	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	@Column(name = "email")
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "country")
	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "zip")
	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	@Column(name = "state")
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "city")
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "address")
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "phone")
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "fax")
	public Integer getFax() {
		return this.fax;
	}

	public void setFax(Integer fax) {
		this.fax = fax;
	}
}
