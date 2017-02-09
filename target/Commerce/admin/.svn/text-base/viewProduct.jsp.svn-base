<%@page session="true" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} 
	else {
%>
<html>
<head>
<title>Display Users</title>
</head>
<body bgcolor="">
<jsp:include page="header.jsp"></jsp:include>
<s:form action="searchProductByName">
<s:textfield name="productName" label="Search Product By Name"/>
<s:submit value="Search"/>
</s:form>
<s:form action="searchProductByCategory" name="search">
	<s:select list="category" label="Please Select" headerValue="Please Select" headerKey="0" name="categor"/>
	<s:submit  value="Search"/>
</s:form>
<s:form action="viewProduct">
	<display:table id="products" name="products" pagesize="5"
		export="false" requestURI="viewProduct">
		<display:column property="categoryname" title="Category Name"
			paramId="userid" sortable="true" />
		<display:column property="productname" title="Product Name"
			sortable="true" />
		<display:column property="productprice" title="Product Price"
			sortable="true" />
		<display:column property="listprice" title="Last Price"
			sortable="true" />
		<display:column property="userImage" title="Image Name" paramId="id"
			paramProperty="productid" url="/admin/viewProductDetail.action" />
		<display:column property="quantity" title="Quality" sortable="true" paramId="id"
			paramProperty="productid" url="/admin/viewProductDetail.action"/>
		<display:column property="description" title="Description"
			sortable="true" paramId="id"
			paramProperty="productid" url="/admin/viewProductDetail.action"/>
		<display:column property="briefdisc" title="Brief Description"
			sortable="true" paramId="id"
			paramProperty="productid" url="/admin/viewProductDetail.action"/>
		<display:column property="productname" title="Update" paramId="id"
			paramProperty="productid" url="/admin/updateProductForm.action"/>
		<display:column property="productname" title="Delete" paramId="id"
			paramProperty="productid" url="/admin/deleteProduct.action" />
		<display:setProperty name="paging.banner.placement" value="bottom" />
	</display:table>
</s:form>
<%} %>
</body>
</html>