<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page session="true"%>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} 
	else {
%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Home Page</title>	
</head>

<!--[if IE 6 ]><body class="ie6 old_ie"><![endif]-->
<!--[if IE 7 ]><body class="ie7 old_ie"><![endif]-->
<!--[if IE 8 ]><body class="ie8"><![endif]-->
<!--[if IE 9 ]><body class="ie9"><![endif]-->
<!--[if !IE]><!-->
<body>
	<!--<![endif]-->
		<header>
			<jsp:include page="header.jsp"></jsp:include>
		</header>
</body>
</html>

<%
	}
%>