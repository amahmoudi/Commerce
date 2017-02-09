<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="bakiTech.email.SendProductConfirmationMail"%>
<%@page import="dao.tables.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="dao.domain.ProductDao"%>
<%@page import="bakiTech.model.ShoppingCart"%>

<%@page import="dao.domain.UserDao"%>
<%@page import="dao.tables.User"%>
<%@page import="java.io.File"%>

<%@page import="org.apache.struts2.ServletActionContext"%>

<%@page import="org.apache.commons.io.FileUtils"%>
<%@page import="bakiTech.pdf.CreateBill"%>
<%@page import="dao.domain.OrderDao"%>
<%@page import="dao.tables.Order"%>

<%@page import="java.util.Date"%>
<%@page import="bakiTech.action.orderItems.OrderItems"%>
<%@page import="dao.domain.OrderItemDAO"%>
<%@page import="dao.tables.Orderitems"%>

<%@page import="org.hibernate.HibernateException"%><script src="./JQuery/jquery-1.4.2.js"
	type="text/javascript"></script>
<%@page import="dao.domain.ProductDao"%>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />

<%!String address;
   File bill;
%>

<%
	session = request.getSession(false);
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {

		String userName = (String) session.getAttribute("loggedUser");
		int id = (Integer) session.getAttribute("id");

		List user = new ArrayList<User>();
		User users = new User();
		UserDao userDao = new UserDao();
		user = userDao.searchUser(id);

		for (Iterator iterator = user.iterator(); iterator.hasNext();) {
			users = (User) iterator.next();
		}

		//List for fetching Product Details
		List productList = new ArrayList<Product>();
		String pid = (String) request.getParameter("id");
		String quantity=request.getParameter("quantity");
		String total=request.getParameter("total");
		String shipping=request.getParameter("shipping");
		
		
		int productId = Integer.parseInt(pid);
		Product product = new Product();
		ProductDao dao = new ProductDao();
		productList = dao.search(productId);

		for (Iterator<Product> iterator = productList.iterator(); iterator
				.hasNext();) {
			product = (Product) iterator.next();
		}

		//Code To Save Order In database
		
		Date date=new Date();
		
		
		OrderDao orderDao=new OrderDao();
		Order order=new Order();
		
		order.setOrdertime(date);
		order.setCustfirstname(users.getFirstname());
		order.setCustlastname(users.getLastname());
		order.setCustemail(users.getEmail());
		order.setCustcountry(users.getCountry());
		order.setCustzip(users.getZip());
		order.setCuststate(users.getState());
		order.setCustaddress(users.getAddress());
		order.setCustcity(users.getCity());
		order.setCustphone(users.getPhone());
		order.setCustfax(users.getFax());
		try{
			orderDao.placeOrder(order);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		// code to add details In Order Items
		Orderitems orderItems=new Orderitems();
		OrderItemDAO orderItemDAO=new OrderItemDAO();
		Object Oid=orderDao.selectCurrent();
		System.out.println(Oid);
		int quan=Integer.parseInt(quantity);
		
		String lprice=product.getListprice();
		Float lp=Float.parseFloat(lprice);
	
		orderItems.setProductid(product.getProductid());
		orderItems.setOrderid((Integer)Oid);
		orderItems.setName(product.getProductname());
		orderItems.setPrice(lp);
		orderItems.setQuantity(quan);
		
		try{
			orderItemDAO.placeOrder(orderItems);
		}catch(HibernateException e){
			e.printStackTrace();
		}
%>
<jsp:include page="header.jsp" />
<br clear="all" />
<br clear="all" />
<br clear="all" />
<br clear="all" />
<h3 align="center">Bill Of Online Shopping</h3>
<table border="0" align="center" cellspacing="10">
	<tr>
		<td align="left" style="color: #7A007A;">Customer Id</td>
		<td align="left" style="color: #7A007A;"><%=id%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">Customer Name</td>
		<td align="left" style="color: #7A007A;"><%=userName%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">Product Id</td>
		<td align="left" style="color: #7A007A;"><%=productId%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">Product Name</td>
		<td align="left" style="color: #7A007A;"><%=product.getProductname()%></td>
	</tr>
	
	<tr>
		<td align="left" style="color: #7A007A;">Address</td>
		<td align="left" style="color: #7A007A;"><%=users.getAddress()%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">City</td>
		<td colspan="2" align="left" style="color: #7A007A;"><%=users.getCity()%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">State</td>
		<td colspan="2" align="left" style="color: #7A007A;"><%=users.getState()%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">Country</td>
		<td colspan="2" align="left" style="color: #7A007A;"><%=users.getCountry()%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">Pin Code</td>
		<td colspan="2" align="left" style="color: #7A007A;"><%=users.getZip()%></td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">Phone No</td>
		<td colspan="2" align="left" style="color: #7A007A;"><%=users.getPhone()%></td>
	</tr>
	
	<tr>
		<td align="left" style="color: #7A007A;">Quantity</td>
		<td align="left" style="color: #7A007A;"><%=quantity%></td>
	</tr>
	
	<tr>
		<td align="left" style="color: #7A007A;">Amount Per Product</td>
		<td align="left" style="color: #7A007A;">Rs. - <%=product.getListprice()%> /-</td>
	</tr>
	<tr>
		<td align="left" style="color: #7A007A;">Shipping Charge</td>
		<td align="left" style="color: #7A007A;">Rs. - <%=shipping%> /-</td>
	</tr>
	
	<tr>
		<td align="left" style="color: #7A007A;">Total Amount</td>
		<td align="left" style="color: #7A007A;">Rs. - <%=total %> /-</td>
	</tr>
	
</table>
<br clear="all" />
<br clear="all" />
<center><input type="button" value="Print Bill"
	onclick="window.print();return false;" /></center>
<%
	
//Download a SMTP Server install and start that And then unzip the code for mail

// Sending Mail To the User
	/*
	SendProductConfirmationMail email = new SendProductConfirmationMail();
	String[] recipients = new String[] { users.getEmail() };
	String subject = "Shopping Bill";

	String message = "<html><body bgcolor='gray'><h3 align='center'>Bill Of Online Shopping</h3><table border='0' align='center' cellspacing='10'>"
	+"<tr><td align='left' style='color: #7A007A;'> Customer Id </td><td align='left' style='color: #7A007A;'>"+id+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'>Cusromer Name </td><td align='left' style='color: #7A007A;'>"+userName+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'>Product Id</td><td align='left' style='color: #7A007A;'>"+productId+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'>Product Name </td><td align='left' style='color: #7A007A;'>"+product.getProductname()+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'> Address </td><td align='left' style='color: #7A007A;'>"+users.getAddress()+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'>City </td><td align='left' style='color: #7A007A;'>"+users.getCity()+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'>State</td><td align='left' style='color: #7A007A;'>"+users.getState()+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'>Country  </td><td align='left' style='color: #7A007A;'>"+users.getCountry()+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'> Phone  </td><td align='left' style='color: #7A007A;'>"+users.getPhone()+"</td></tr>"+
	"<tr><td align='left' style='color: #7A007A;'>Pin No</td><td align='left' style='color: #7A007A;'>"+users.getZip()+"</td></tr></table>"+
	"<br clear='all' />	<br clear='all' /><center><input type='button' value='Print Bill' onclick='window.print();' /></center>"+
	"</body></html>";
	String from = "b1@localhost";
	email.postMail(recipients, subject, message, from);*/
	}
%>
