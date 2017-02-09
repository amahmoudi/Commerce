<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
 <meta name="description" content="UI Elements: Large Drop Down Menu" />
 <meta name="keywords" content="jquery, drop down, menu, navigation, large, mega "/>
<s:actionerror />
<link rel="stylesheet" href="css/style.css" media="screen" />
<!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<style>
            .box h2{
				color:#f0f0f0;
				padding:40px 10px;
				text-shadow:1px 1px 1px #ccc;
            }

        </style>
        <!-- The JavaScript -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
        <script type="text/javascript">
            $(function() {
				/**
				 * the menu
				 */
				var $menu = $('#ldd_menu');
				
				/**
				 * for each list element,
				 * we show the submenu when hovering and
				 * expand the span element (title) to 510px
				 */
				$menu.children('li').each(function(){
					var $this = $(this);
					var $span = $this.children('span');
					$span.data('width',$span.width());
					
					$this.bind('mouseenter',function(){
						$menu.find('.ldd_submenu').stop(true,true).hide();
						$span.stop().animate({'width':'510px'},300,function(){
							$this.find('.ldd_submenu').slideDown(300);
						});
					}).bind('mouseleave',function(){
						$this.find('.ldd_submenu').stop(true,true).hide();
						$span.stop().animate({'width':$span.data('width')+'px'},300);
					});
				});
            });
        </script>	
</head>

<!--[if IE 6 ]><body class="ie6 old_ie"><![endif]-->
<!--[if IE 7 ]><body class="ie7 old_ie"><![endif]-->
<!--[if IE 8 ]><body class="ie8"><![endif]-->
<!--[if IE 9 ]><body class="ie9"><![endif]-->
<!--[if !IE]><!-->
<body>
	<!--<![endif]-->
	<div class="box">
			<h2>Large Drop Down Menu Demo</h2>
			<ul id="ldd_menu" class="ldd_menu">
				<li>
					<span>Products</span><!-- Increases to 510px in width-->
					<div class="ldd_submenu">
						<ul>
							<li class="ldd_heading">By Location</li>
							<li><a href="viewProduct.action">South America</a></li>
							<li><a href="viewProduct.action">Antartica</a></li>
							<li><a href="viewProduct.action">Africa</a></li>
							<li><a href="viewProduct.action">Asia and Australia</a></li>
							<li><a href="viewProduct.action">Europe</a></li>
						</ul>
						<ul>
							<li class="ldd_heading">By Category</li>
							<li><a href="#">Sun &amp; Beach</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="#">Science &amp; Education</a></li>
							<li><a href="#">Extreme Sports</a></li>
							<li><a href="#">Relaxing</a></li>
							<li><a href="#">Spa and Wellness</a></li>
						</ul>
						<ul>
							<li class="ldd_heading">By Theme</li>
							<li><a href="viewProduct.action">Paradise Islands</a></li>
							<li><a href="viewProduct.action">Cruises &amp; Boat Trips</a></li>
							<li><a href="viewProduct.action">Wild Animals &amp; Safaris</a></li>
							<li><a href="viewProduct.action">Nature Pure</a></li>
							<li><a href="viewProduct.action">Helping others &amp; For Hope</a></li>
							<li><a href="viewProduct.action">Diving</a></li>
						</ul>
						<a class="ldd_subfoot" href="#"> + New Deals</a>
					</div>
				</li>
				<li>
					<span>Users</span>
					<div class="ldd_submenu">
						<ul>
							<li class="ldd_heading">By Location</li>
							<li><a href="viewUser.action">South America</a></li>
							<li><a href="viewUser.action">Antartica</a></li>
							<li><a href="viewUser.action">Africa</a></li>
							<li><a href="viewUser.action">Asia and Australia</a></li>
							<li><a href="viewUser.action">Europe</a></li>
						</ul>
						<ul>
							<li class="ldd_heading">By Category</li>
							<li><a href="viewUser.action">Sun &amp; Beach</a></li>
							<li><a href="viewUser.action">Adventure</a></li>
							<li><a href="viewUser.action">Science &amp; Education</a></li>
							<li><a href="viewUser.action">Extreme Sports</a></li>
							<li><a href="viewUser.action">Relaxing</a></li>
							<li><a href="viewUser.action">Spa and Wellness</a></li>
						</ul>
						<ul>
							<li class="ldd_heading">By Theme</li>
							<li><a href="viewUser.action">Paradise Islands</a></li>
							<li><a href="viewUser.action">Cruises &amp; Boat Trips</a></li>
							<li><a href="viewUser.action">Wild Animals &amp; Safaris</a></li>
							<li><a href="viewUser.action">Nature Pure</a></li>
							<li><a href="viewUser.action">Helping others &amp; For Hope</a></li>
							<li><a href="viewUser.action">Diving</a></li>
						</ul>
						<a class="ldd_subfoot" href="#"> + New Deals</a>
					</div>
				</li>
				<li>
					<span>Locations</span>
					<div class="ldd_submenu">
						<ul>
							<li class="ldd_heading">By Location</li>
							<li><a href="#">South America</a></li>
							<li><a href="#">Antartica</a></li>
							<li><a href="#">Africa</a></li>
							<li><a href="#">Asia and Australia</a></li>
							<li><a href="#">Europe</a></li>
						</ul>
						<ul>
							<li class="ldd_heading">By Category</li>
							<li><a href="#">Sun &amp; Beach</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="#">Science &amp; Education</a></li>
							<li><a href="#">Extreme Sports</a></li>
							<li><a href="#">Relaxing</a></li>
							<li><a href="#">Spa and Wellness</a></li>
						</ul>
						<ul>
							<li class="ldd_heading">By Theme</li>
							<li><a href="#">Paradise Islands</a></li>
							<li><a href="#">Cruises &amp; Boat Trips</a></li>
							<li><a href="#">Wild Animals &amp; Safaris</a></li>
							<li><a href="#">Nature Pure</a></li>
							<li><a href="#">Helping others &amp; For Hope</a></li>
							<li><a href="#">Diving</a></li>
						</ul>
						<a class="ldd_subfoot" href="#"> + New Deals</a>
					</div>
				</li>
			</ul>
		</div>
</body>
</html>
