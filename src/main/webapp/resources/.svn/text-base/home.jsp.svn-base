<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page session="true" %>
<%
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <s:actionerror/>
        <link rel="stylesheet" href="../cssBaki/style.css" />
        <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <title>Home Page</title>
    </head>
    
    <!--[if IE 6 ]><body class="ie6 old_ie"><![endif]-->
    <!--[if IE 7 ]><body class="ie7 old_ie"><![endif]-->
    <!--[if IE 8 ]><body class="ie8"><![endif]-->
    <!--[if IE 9 ]><body class="ie9"><![endif]-->
    <!--[if !IE]><!--><body><!--<![endif]-->
        <div id="bloc_page">
            <header>
                <div id="titre_principal">
                    <img src="../images/zozor_logo.png" alt="Logo de Zozor" id="logo" />
                    
                </div>
                
                <nav>
                    <ul>
                        <jsp:include page="header.jsp"/>
                    </ul>
                </nav>
            </header>
            
            <div >
                <div >
                </div>
            </div>
            <footer>
            </footer>
        </div>
    </body>
</html>
<%
	}
%>