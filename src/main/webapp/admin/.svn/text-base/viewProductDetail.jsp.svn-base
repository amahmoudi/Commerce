<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.tables.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="dao.domain.ProductDao"%><link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} else {
%>

<%!Product productDatail;%>
<%
	String productId = (String) request.getParameter("id");
		int id = Integer.parseInt(productId);
		ProductDao dao = new ProductDao();
		List Products = new ArrayList<Product>();
		Products = dao.search(id);
		String img;
		String categoryname;
		String productname;
		String productprice;
		String listprice;
		String quantity;
		String description;
		String briefdisc;

		for (Iterator iterator = Products.iterator(); iterator
				.hasNext();) {
			productDatail = (Product) iterator.next();
		}
		img = productDatail.getUserImage();
		categoryname = productDatail.getCategoryname();
		productname = productDatail.getProductname();
		productprice = productDatail.getProductprice();
		listprice = productDatail.getListprice();
		quantity = productDatail.getQuantity();
		description = productDatail.getDescription();
		briefdisc = productDatail.getBriefdisc();
		String imgPath = "../uploadedImage/" + img;
%>
<jsp:include page="header.jsp" /><br clear="all" />
<br clear="all" />
<body background="#66FFC2">
<h2 align="center"><%=productname %></h2><br clear="all"/><br clear="all"/>
<img align="right" width="350" height="260" src="<%=imgPath%>">
<table align="center" cellpadding="5" cellspacing="15">
  <tr>
    <td>Name</td>
    <td><%=productname%></td>
  </tr>
  <tr>
    <td>Category</td>
    <td><%=categoryname%></td>
  </tr>
  <tr>
    <td>Price</td>
    <td><%=productprice%></td>
  </tr>
  <tr>
    <td>List Price</td>
    <td><%=listprice%></td>
  </tr>
  <tr>
    <td>Quantity</td>
    <td><%=quantity%></td>
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

<%
	}
%>
</body>