<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.tables.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="dao.domain.ProductDao"%>
<%@page import="bakiTech.model.ShoppingCart"%>

<%@page import="dao.domain.UserDao"%>
<%@page import="dao.tables.User"%>
<script src="./JQuery/jquery-1.4.2.js"
	type="text/javascript"></script>
<%@page import="dao.domain.ProductDao"%>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />

<%
	session = request.getSession(false);
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
		
%>

<%!String productName;
	String description;
	String image;
	int price;
	int productId;
	int listprice;
	int quantity=1;
	long totalPrice=listprice;
	long shippingCharge;
	long viewShipping;
	String imgPath;
%>
<%
	List productList = new ArrayList<Product>();
		ProductDao dao = new ProductDao();
		Product products = new Product();
		String id = request.getParameter("id");
		int productId = Integer.parseInt(id);
		String shippCharge=request.getParameter("cities");
		
		if(request.getParameter("quantity")!="" && request.getParameter("quantity")!=null){
			String amount=(String)request.getParameter("quantity");
			quantity=Integer.parseInt(amount);
		}
		
		productList=dao.search(productId);
		
	List<Product> myCart=new ArrayList<Product>();
	List<Product> displayList=new ArrayList<Product>();
	
%>
<jsp:include page="header.jsp" /><br clear="all" />
<br clear="all" />
<br clear="all" />
<h2 align="center">My Cart</h2>
<%
		for (Iterator<Product> iterator = productList.iterator(); iterator
					.hasNext();) {
				products = (Product) iterator.next();
				
				productName = products.getProductname();
				description = products.getDescription();
				price = Integer.parseInt(products.getProductprice());
				listprice =Integer.parseInt(products.getListprice());
				
				if(shippCharge!="" && shippCharge!=null){
					shippingCharge=Integer.parseInt(shippCharge);
				}
				
				viewShipping=quantity*shippingCharge;
				totalPrice = quantity * listprice;
				totalPrice=totalPrice+viewShipping;
				
				image = products.getUserImage();
				productId = products.getProductid();
				imgPath = "uploadedImage/" + image;
%>
<table align="center" bgcolor="#FFF4E9" cellpadding="15" cellspacing="15">

<tr bgcolor="#80CC80">
		<th class="th"><u>Product Image</u></th>
		<th class="th"><u>Product Name</u></th>
		<th class="th"><u>Price</u></th>
		<th class="th"><u>Quantity</u></th>
		<th class="th"><u>Shipping Charge</u></th>
		<th class="th"><u>Total</u></th>
</tr>
<tr></tr>
<tr>
		<th class="th"><img width="200" height="175" src="<%=imgPath%>" align="left"></th>
		<th class="th"><%=productName%></th>
		<th class="th">Rs. <%=listprice %> /- Only</th>
		<th class="th">
			<form action="myCart.action" method="post">
				<input type="hidden" name="id" value="<%=productId %>"/>
				<input type="text" name="quantity" maxlength="2" size="2"/>
				<br clear="all">
				<input type="submit" value="Check Out"/>
			</form>
		</th>
		<th class="th">Rs. <%=viewShipping %>  /- Only</th>
		<th class="th">Rs. <%=totalPrice %> /- Only</th>
	</tr>
</table>
<br clear="all"/><br clear="all"/>
<center><a href="purchaseReport.action?id=<%=productId%>&total=<%=totalPrice %>&quantity=<%=quantity%>&shipping=<%=viewShipping %>">Purchase</a></center>
<%
	}
}
%>