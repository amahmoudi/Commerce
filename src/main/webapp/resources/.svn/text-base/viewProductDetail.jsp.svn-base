<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.tables.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="dao.domain.ProductDao"%>
<%@page import="bakiTech.model.ShoppingCart"%>

<%@page import="dao.domain.UserDao"%>
<%@page import="dao.tables.User"%><script src="./JQuery/jquery-1.4.2.js"
	type="text/javascript"></script>
<%@page import="dao.domain.ProductDao"%><link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<script>
	$(document).ready(function() {
		$("#productname").click(function() {
			$("#p").show("slow");
		});
	});
</script>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
%>

<%!Product productDatail;%>
<%
	String productId = (String) request.getParameter("id");
		/*String uId = (String)session.getAttribute("id");
		int userId = Integer.parseInt(uId);
		List user = new ArrayList<User>();
		User userdetail = new User();
		UserDao userDao = new UserDao();
		user = userDao.searchUser(userId);
		
		for (Iterator iterator = user.iterator(); iterator.hasNext();) {
			userdetail = (User) iterator.next();
		}*/
		
		int id = Integer.parseInt(productId);
		ProductDao dao = new ProductDao();
		List<Product> Products = new ArrayList<Product>();
		Products = dao.search(id);
		String img;
		String categoryname;
		String productname;
		String productprice;
		String listprice;
		String quantity;
		String description;
		String briefdisc;
		int pId;
		List price = new ArrayList();

		for (Iterator iterator = Products.iterator(); iterator
				.hasNext();) {
			productDatail = (Product) iterator.next();
		}
		pId = productDatail.getProductid();
		img = productDatail.getUserImage();
		categoryname = productDatail.getCategoryname();
		productname = productDatail.getProductname();
		productprice = productDatail.getProductprice();
		listprice = productDatail.getListprice();
		quantity = productDatail.getQuantity();
		description = productDatail.getDescription();
		briefdisc = productDatail.getBriefdisc();
		String imgPath = "uploadedImage/" + img;
		int total = 0;
		int listp=Integer.parseInt(listprice);
		//total = total + Integer.parseInt(listprice);
		int cartValue = 0;
%>

<jsp:include page="header.jsp" /><br clear="all" />
<br clear="all" />
<body background="#66FFC2">
<h2 align="center"><%=productname %></h2>
<div id="p" style="display: none;">Your Shopping<br clear="all" />
<br clear="all" />
<%
List<ShoppingCart> cart=new ArrayList<ShoppingCart>();
ShoppingCart shoppingCart=new ShoppingCart();
shoppingCart.setAmount(total+listp);
%>
Tola Price - Rs. <%=shoppingCart.getAmount()%>/-

 <%
 	cartValue = total;
 %>
 <br clear="all" /><br clear="all" />
 <a href="#">Check Out</a>
 <a href="#">Continue Shopping</a>
</div>
<br clear="all" />
<br clear="all" />
<img align="right" width="330" height="260" src="<%=imgPath%>">
<table align="center" cellpadding="5" cellspacing="15">
	<tr>
		<td>Price</td>
		<td>Rs. <STRIKE> <%=productprice%>  </STRIKE>&nbsp; /- Only</td>
	</tr>
	<tr>
		<td>List Price</td>
		<td>Rs. <%=listprice%> /- Only</td>
	</tr>
	<tr>
		<td>Description</td>
		<td><%=description%></td>
	</tr>
	<tr>
		<td>Brief Description</td>
		<td><%=briefdisc%></td>
	</tr>
</table>
<center><a href="viewShipping.action?id=<%=pId%>">Proceed</a><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
	id="productname" href="myCartWithoutShipping.action?id= --><%//=pId%><!-- ">Add To Cart</a></center> -->
<%
	}
%>
</body>