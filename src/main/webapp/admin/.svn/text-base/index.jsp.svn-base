<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<s:actionerror />
<link rel="stylesheet" href="css/style.css" />
<!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<title>Administrator</title>
</head>

<!--[if IE 6 ]><body class="ie6 old_ie"><![endif]-->
<!--[if IE 7 ]><body class="ie7 old_ie"><![endif]-->
<!--[if IE 8 ]><body class="ie8"><![endif]-->
<!--[if IE 9 ]><body class="ie9"><![endif]-->
<!--[if !IE]><!-->
<body>
	<!--<![endif]-->
	<div id="headerPanel">
		<header>
			<jsp:include page="../header.jsp"></jsp:include>
		</header>
	</div>
	<div id="bodyPanel">
		<s:form action="adminlogin">
			<center>
				<table>
					<tr>
						<s:textfield key="userid" />
					</tr>
					<tr>
						<s:password key="password" />
					</tr>
					<tr>
						<td></td>
						<td><s:submit value="Login"></s:submit></td>
					</tr>
				</table>
			</center>
		</s:form>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>