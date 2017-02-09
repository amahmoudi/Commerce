<%@page session="true"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} else {
%>
<html>
<head>
<title>Add Product Detail</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<s:head />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Update Product Form</h1>
<s:form action="updateProduct" method="POST"
	enctype="multipart/form-data">
	<s:select list="category" key="categoryname" />
	<s:textfield key="productname" />
	<s:hidden key="productid" />
	<s:textfield key="productprice" />
	<s:textfield key="listprice" />
	<s:file key="userImage" />
	<s:textfield key="quantity" />
	<s:textarea key="description" />
	<s:textarea key="briefdisc" />
	<s:submit value="Update Product" />
</s:form>
</body>
<%
}
%>
</html>