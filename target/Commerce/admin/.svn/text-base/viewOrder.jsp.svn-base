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
<s:form action="admin/viewOrder">

	<display:table id="order" name="order" pagesize="5" export="false"
		requestURI="viewOrder">
		<display:column property="ordertime" title="Order Time"
			paramId="userid" sortable="true" />
		<display:column property="custfirstname" title="Customer Name"
			sortable="true" />
		<display:column property="custlastname" title="Last Name"
			sortable="true" />
		<display:column property="custemail" title="E-Mail" sortable="true" />
		<display:column property="custcountry" title="Country" sortable="true" />
		<display:column property="custzip" title="Zip Code" sortable="true" />
		<display:column property="custstate" title="State" sortable="true" />
		<display:column property="custcity" title="City" sortable="true" />
		<display:column property="custaddress" title="Address" sortable="true" />
		<display:column property="custphone" title="Telephone No"
			sortable="true" />
		<display:column property="custfax" title="Fax No" sortable="true" />
		<display:setProperty name="paging.banner.placement" value="bottom" />
	</display:table>
</s:form>
<%} %>
</body>
</html>