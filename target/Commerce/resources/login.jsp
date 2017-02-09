<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <s:actionerror/>
        <link rel="stylesheet" href="cssBaki/style.css" />
        <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <title>User Login Page</title>
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
                    <h1></h1>
                    <h2>Shopping Card</h2>
                </div>
                
                <nav>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="registerPage.action">Registration</a></li>
                        <li><a href="loginPage.action"> Login</a></li>
                        <li><img src="../Form1/contact.gif" width="89" height="18" alt=""/></li>
                    </ul>
                </nav>
            </header>
            
            <div id="banniere_image">
                <div id="banniere_description">
                    Notre tunisie...
                    <a href="#" class="bouton_rouge">Voir l'article <img src="../images/flecheblanchedroite.png" alt="" /></a>
                </div>
            </div>
            
            <section>
                <article>
                    <h1><img src="../images/ico_epingle.png" alt="Catégorie voyage" class="ico_categorie" />I'm tunisien</h1>
                   <s:form action="loginsuccess">
<center>
<table >
    <tr>
	<s:textfield name="userId" label="Login ID"></s:textfield>
	</tr>
	<tr>
	<s:password name="password" label="Password"></s:password>
	</tr>
	<tr>
	<td></td>
	<td>
	<s:submit value="Login"></s:submit>
	</td>
	</tr>
	</table>
	</center>
</s:form>
                </article>
            </section>
            
            <footer>
                <div id="tweet">
                    <h1></h1>
                    <p></p>
                </div>
                <div id="mes_photos">
                    <h1></h1>
                    <p> </p>
                </div>
                <div id="mes_amis">
                    <h1></h1>
                   
                    
                </div>
            </footer>
        </div>
    </body>
</html>