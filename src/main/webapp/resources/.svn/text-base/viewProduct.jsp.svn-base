<%@page session="true"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page import="dao.domain.ProductDao"%>
<%@page import="dao.tables.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.List"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%!
	String productName;
	String description;
	String image;
	int price;
	int productId;
	int listprice;
	String imgPath;
%>
<%
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
		List productList=new ArrayList<Product>();
		Product products=new Product();
		productList=(List)request.getAttribute("products");
%>
<html>
<head>
<title>Display Users</title>
<link href="<s:url value="../cssBaki/style.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body bgcolor="">
<jsp:include page="header.jsp"></jsp:include>
<s:form action="searchProductByNameUser">
	<s:textfield name="productName" label="Search Product By Name" />
	<s:submit value="Search" />
</s:form>
<s:form action="searchProductByCategoryUser" name="search">
	<s:select list="category" label="Please Select"
		headerValue="Please Select" headerKey="0" name="categor" />
	<s:submit value="Search" />
</s:form>
<h2 align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Products
</h2>
<table align="left">
<%
for (Iterator<Product> iterator = productList.iterator(); iterator.hasNext();) {
	products = (Product) iterator.next();
	productName=products.getProductname();
	description=products.getDescription();
	price=Integer.parseInt(products.getProductprice());
	listprice=Integer.parseInt(products.getListprice());
	image=products.getUserImage();
	productId=products.getProductid();
	imgPath = "uploadedImage/" + image;
%>
<tr>
	<th class="th"><%=productName %></th>
	<th class="th"><a href="viewProductDetailUser.action?id=<%=productId %>"><img width="100" height="70" src="<%=imgPath%>"></a></th>
	<th class="th">Price<br>Rs. <%=price %> /- Only</th>
</tr>
<%
}
%>
</table>
<%
	}
%>
</body>
</html>