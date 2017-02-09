<%@ taglib prefix="s" uri="/struts-tags"%>
<h3 align="center"><u>New User Registration</u></h3>
<link href="<s:url value="css/style.css"/>" rel="stylesheet"
	type="text/css" />
<s:head />

<a href="index.jsp">Back</a>
<s:actionerror/>
<s:actionmessage/>
<center><s:form action="register" validate="true">
	<s:textfield name="userid" label="User Id"></s:textfield>
	<s:password name="password" label="User Password"></s:password>
	<s:textfield name="firstname" label=" First Name"></s:textfield>
	<s:textfield name="lastname" label="Last Name"></s:textfield>
	<s:textfield name="email" label="E- mail"></s:textfield>
	<s:textfield name="country" label="Country"></s:textfield>
	<s:textfield name="zip" label="Zip Code"></s:textfield>
	<s:textfield name="state" label="Sate"></s:textfield>
	<s:textfield name="city" label="City"></s:textfield>
	<s:textfield name="address" label="Adderss"></s:textfield>
	<s:textfield name="phone" label="Telephone No"></s:textfield>
	<s:textfield name="fax" label="Fax"></s:textfield>
	<s:submit value="Register"></s:submit>
</s:form></center>