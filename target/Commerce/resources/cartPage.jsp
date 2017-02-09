<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.tables.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="dao.domain.ProductDao"%>

<%@page import="dao.domain.UserDao"%>
<%@page import="dao.tables.User"%>
<%@page import="dao.domain.ProductDao"%>

<%@page import="bakiTech.model.ShoppingCart"%>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<%
	session = request.getSession(false);
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
		List<ShoppingCart> cart=new ArrayList<ShoppingCart>();
%>

<%
	}
%>