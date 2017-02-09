<%@page session="true"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} else {
%>
<html>
<head>
<title>Display Users</title>
<link href="<s:url value="../css/style.css"/>" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="css/displaytag.css" type="text/css">
<link rel="stylesheet" href="css/screen.css" type="text/css">
<link rel="stylesheet" href="css/site.css" type="text/css">
</head>
<body bgcolor="">
	<div id="headerPanel">
		<header>
			<jsp:include page="header.jsp"></jsp:include>
		</header>
	</div>
	<div id="bodyPanel">
		<s:form action="viewUser">
			<display:table id="user" name="user" pagesize="5" export="true"
				requestURI="viewUser" sort="list">
				<display:column property="userid" title="User ID" paramId="userid"
					sortable="true" headerClass="sortable"/>
				<display:column property="firstname" title="First Name"
					sortable="true" headerClass="sortable"/>
				<display:column property="lastname" title="Last Name"
					sortable="true" headerClass="sortable"/>
				<display:column property="email" title="E-Mail" sortable="true" headerClass="sortable"/>
				<display:column property="country" title="Country" sortable="true" headerClass="sortable" />
				<display:column property="zip" title="Zip Code" sortable="true" headerClass="sortable"/>
				<display:column property="state" title="State" sortable="true" headerClass="sortable"/>
				<display:column property="city" title="City" sortable="true" headerClass="sortable"/>
				<display:column property="address" title="Address" sortable="true" headerClass="sortable"/>
				<display:column property="phone" title="Telephone No"
					sortable="true" headerClass="sortable"/>
				<display:column property="fax" title="Fax No" sortable="true" headerClass="sortable"/>
				<display:column property="firstname" title="Delete" paramId="id"
					paramProperty="id" url="/admin/deleteUser.action" headerClass="sortable"/>
				<display:setProperty name="paging.banner.placement" value="bottom" />
			</display:table>
		</s:form>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>
<%
	}
%>