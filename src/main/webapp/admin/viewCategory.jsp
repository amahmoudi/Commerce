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
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body bgcolor="">
<jsp:include page="header.jsp"></jsp:include>
<s:form action="admin/viewCategory">

	<display:table id="category" name="category" pagesize="5" export="false"
		requestURI="viewCategory">
		<display:column property="categoryid" title="Category ID" paramId="userid"
			sortable="true" />
		<display:column property="categoryname" title="Category Name"
			sortable="true" />
		<display:setProperty name="paging.banner.placement" value="bottom" />
		<display:column property="categoryname" title="Delete" paramId="id"
			paramProperty="categoryid" url="/admin/deleteCategory.action" />
			<display:column property="categoryname" title="Update" paramId="id"
			paramProperty="categoryid" url="/admin/updateCategoryForm.action" />
		
	</display:table>
</s:form>
<%} %>
</body>
</html>