<%@page session="true" %>
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
<s:head />
<title>Admin-Add Category form</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Add Category</h1>
<s:form action="addCategory">
	<s:textfield key="categoryname" label="Category Name" />
	<s:submit value="Add Category"  />
</s:form>
</body>
</html>
<%
	}
%>