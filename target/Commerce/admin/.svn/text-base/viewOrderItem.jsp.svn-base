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
<title>View Order Items</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body bgcolor="">
<jsp:include page="header.jsp"></jsp:include>
<s:form action="admin/viewOrderedItem">

	<display:table id="orderitems" name="orderitems" pagesize="5"
		export="false" requestURI="viewOrderedItem">
		<display:column property="orderid" title="Order ID" paramId="userid"
			sortable="true" />
		<display:column property="productid" title="Product Id" sortable="true" />
		<display:column property="name" title="Order Name" sortable="true" />
		<display:column property="price" title="Price" sortable="true" />
		<display:column property="quantity" title="Quantity" sortable="true" />
		<display:setProperty name="paging.banner.placement" value="bottom" />
	</display:table>
</s:form>
<%} %>
</body>
</html>