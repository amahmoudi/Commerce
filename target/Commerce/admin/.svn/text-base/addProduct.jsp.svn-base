<%@page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} 
	else {
%>
<html>
<head>
<title>Add Product Detail</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<s:head/>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<h1>Add Product Form</h1>
<s:actionerror/>
<s:form action="addProduct" method="POST" enctype="multipart/form-data">
	<s:select list="category" key="categoryname" headerKey="0" headerValue="--Select Product Category--"/>
	<s:textfield key="productname"/>
	<s:textfield key="productprice"/>
	<s:textfield key="listprice"/>
	<s:file key="userImage"/>
	<s:textfield key="quantity"/>
	<s:textarea key="description"/>
	<s:textarea key="briefdisc"/>
	<s:submit key="Add Product"/>
</s:form>
</body>
<%} %>
</html>