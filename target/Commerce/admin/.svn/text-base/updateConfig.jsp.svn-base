<%@page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<title>Add Product Detail</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<center>
<h1>Update Config</h1>
</center>
<s:form action="updateConfig">
	<s:hidden name="id"/>
	<s:textfield name="storename" label="Store Name"/>	
	<s:textfield name="storeurl" label="Store Url"/>
	<s:textfield name="ordernoticeemail" label="Order notice E-Mail"/>
	<s:textfield name="cursymbol" label="Currency Symbol"/>
	<s:textfield name="curcode" label="Currency Code"/>
	<s:textarea name="aboutustext" label="About Us" cols="16" rows="3"/>
	<s:textarea name="shipdeltext" label="Shipping Details" cols="16" rows="3"/>
	<s:submit value="Update"/>
</s:form>
</body>
<%} %>
</html>