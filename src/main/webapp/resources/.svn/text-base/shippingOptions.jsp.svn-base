<%@page session="true"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.tables.Cities"%>
<%@page import="dao.domain.CitiesDao"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
		String prductid = request.getParameter("id");
		int id = Integer.parseInt(prductid);
		CitiesDao dao = new CitiesDao();
		Cities cities = new Cities();
		List<Cities> citiesList = new ArrayList<Cities>();
		citiesList = dao.showCities();
%>

<jsp:include page="header.jsp" />
<center>
<form action="myCart.action" method="post">
	<input type="hidden" name="id" value="<%=id%>" />
	<select name="cities">
	<option value="0">Please Select Cities</option>
	<%
		for (Iterator iterator = citiesList.iterator(); iterator.hasNext();) {
		cities = (Cities) iterator.next();
		
	%>
	<option value="<%=cities.getCharges()%>"><%=cities.getCityName() %></option>
	<%
		
		}
	%>
	</select>
	<input type="submit" value="Proceed"/>
	<img src="images/map-of-india.gif" align="right" />
</form>
</center>

<%
	}
%>
