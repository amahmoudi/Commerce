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
<s:head/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<title>Add Product Detail</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<center>
<h1>Add Config</h1>
</center>
<s:actionerror/>
<s:form action="addConfig">
	<s:textfield key="storename"/>	
	<s:textfield key="storeurl" />
	<s:textfield key="ordernoticeemail" />
	<s:textfield key="cursymbol" />
	<s:textfield key="curcode" />
	<s:textarea key="aboutustext" cols="16" rows="3"/>
	<s:textarea key="shipdeltext" cols="16" rows="3"/>
	<s:submit key="Add"/>
</s:form>
</body>
<%} %>
</html>