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
<s:form action="admin/viewConfig">

	<display:table id="configList" name="configList" pagesize="5" export="false"
		requestURI="viewConfig">
		<display:column property="id" title="Config Id" sortable="true" />
		<display:column property="storename" title="Store Name" sortable="true" />
		<display:column property="storeurl" title="Store Url" sortable="true" />
		<display:column property="ordernoticeemail" title="Store Notice Mail" sortable="true" />
		<display:column property="cursymbol" title="Currency Symbol" sortable="true" />
		<display:column property="curcode" title="Currency Code" sortable="true" />
		<display:column property="aboutustext" title="About Us" sortable="true"/>
		<display:column property="shipdeltext" title="Shiiping Detail" sortable="true" />
		<display:column property="storename" title="Delete" paramId="id"
			paramProperty="id" url="/admin/deleteConfig.action" />
		<display:column property="storename" title="Update" paramId="id"
			paramProperty="id" url="/admin/updateConfigForm.action" />
		<display:setProperty name="paging.banner.placement" value="bottom" />
	</display:table>
</s:form>
<%} %>
</body>
</html>