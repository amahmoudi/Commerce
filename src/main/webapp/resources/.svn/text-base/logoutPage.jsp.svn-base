<%@page session="true"%>
<%
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
		session.removeAttribute("loggerAdmin");
		session.invalidate();
		response.sendRedirect("./index.jsp");
	}
%>