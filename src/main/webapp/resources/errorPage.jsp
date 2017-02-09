<%
String info=(String)request.getAttribute("errorMessage");
%>
<a href="../loginPage.action">Login</a>
<center><h1><%=info%></h1></center>