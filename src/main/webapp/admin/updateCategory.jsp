<%@page session="true"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} else {
%>
<html>
<head>
<title>Update Category</title>
<link href="<s:url value="css/style.css"/>" rel="stylesheet"
	type="text/css" />
<s:head />
</head>
<body>
<jsp:include page="header.jsp" />
<h1>Add Category</h1>
<s:form action="updateCategory">
	<s:hidden name="categoryid" />
	<s:textfield name="categoryname" label="Category Name" />
	<s:submit value="Update Category" />
</s:form>
</body>
<%
	}
%>
</html>