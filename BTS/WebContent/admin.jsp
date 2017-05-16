
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.util.*"%>

<% Connection con = Maconnexion.seconnecter(); %>
<%@page import="com.bts.bd.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="stylesheet" href="css/css3menu1/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu2/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu3/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu4/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu5/style.css" type="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>BTS</title>

<link rel="shortcut icon" href="faviconm.ico" type="image/x-icon">

<meta name="description" content="Flexible & User Friendly Admin skin" />
<meta name="keywords"
	content="Admin Panel, Backend Template, Admin Design, Dashboard, Admin Skin, Professional Admin Template, Beautiful admin panel interface" />

<style type="text/css" media="all">
@import url("image/css/style.css");

@import url("image/css/visualize.css");

@import url("image/css/date_input.css");

@import url("image/css/jquery.minicolors.css");

@import url("image/css/jquery.wysiwyg.css");

@import url("image/css/jquery.fancybox.css");

@import url("image/css/tipsy.css");

@import "image/css/demo_table_jui.css";

@import "image/css/jquery-ui-1.7.2.custom.css";
</style>

<!--[if lt IE 9]>
	<style type="text/css" media="all"> @import url("image/css/ie.css"); </style>
	<![endif]-->

<script type="text/javascript" src="image/js/jquery-1.js"></script>
<script type="text/javascript" src="image/js/highcharts.js"></script>
<script type="text/javascript" src="image/js/exporting.js"></script>
<!--FOR IMAGES-->
<script type="text/javascript" src="image/js/graph-data.js"></script>

<script type="text/javascript" src="image/js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="image/js/header-effect.js"></script>




</head>

<body>

		<div id="header">

		<h1>
			<a href="#">BTS </a>
		</h1>


		<form action="#" method="post" class="searchform">
			<input type="text" class="text" value="Search..." /> <img src="image/ch.jpg">
		</form>


		
		<div class="userprofile">
			<ul>
				<li><a href="#"><img src="image/supprimer.gif" />
						<a href="index.jsp">Déconnexion</a>
						 </li>
					</ul>
			 
		 
		</div>
		<!-- .userprofile ends -->



	  <div class="userprofile"></div>


	  <div class="userprofile"></div>


	</div>
	<!-- #header ends -->



	<div class="clear"></div>


	<div id="sidebar">


	<ul id="css3menu5" class="topmenu">
		<li class="topmenu"><a href="admin.jsp" style="width:140px;"><img src="css/css3menu5/samples.png" alt="Gestion Client"/> Utilisateur </a></li>
	  
	
</ul>






	</div>
	<!-- #sidebar ends -->






	<div id="content">

		<!--<div class="breadcrumb">

			<a href="#">Home</a> &raquo; <a href="#">Level 2</a> &raquo; <a href="#">Level 3</a> &raquo; Page navigation
		</div>		<!-- .breadcrumb ends -->

			
<br><br><br><br>
<h2><a href="ajoutUser.jsp" style="width:120px;"><img src="css/css3menu5/im1.jpg"/>Ajout Utilisateur</a></h2>

<div class="textbox" style="border: 0px;">
			<h3>Liste Des Utilisateurs</h3>
			  <div class="full_width" style="padding: 0px;">
				<table cellpadding="0" cellspacing="0" border="0"
					class="display normal-t">
					<thead>
				<tr>
					<th><font size="0">id</font></th>
					<th><font size="0">Nom</font></th>
					<th><font size="0">Prénom</font></th>
					<th><font size="0">Identifiant</font></th>
			
					<th><font size="0">Mot de passe</font></th>
				
					<th><input type="image" src="image/supprimer.gif">
					</th>
					<th><input type="image" src="image/modifi.png">
					</th>
					</th>
					
					
			
				</tr>
					</thead>
				<tbody>
				
				<% 
				try{
					Statement stmt=con.createStatement();
			  		String str = "select * from user";
			  		ResultSet rs = stmt.executeQuery(str);
			  		int sno=0;
			  		while(rs.next())
			  		{
				%>

				<tr>
					<td><font size="0"><%=rs.getInt(1)%></font></td>
					<td><font size="0"><%=rs.getString(2)%></font></td>
					<td><font size="0"><%=rs.getString(3)%></font></td>
					<td><font size="0"><%=rs.getString(4)%></font></td>
					<td><font size="0"><%=rs.getString(5)%></font></td>
					
					<td><a
						href="http://localhost:8080/BTS/Sup_User?id=<%=rs.getInt(1)%>"><input
							type="image" src="image/supprimer.gif"> </a></td>
					<td><a
						href="http://localhost:8081/application_BCF_PFE/modificationClient.jsp?table=client">
						<input type="image" src="image/modifi.png"> </a></td>

				</tr>
				<%} %>
				<% 
 	}
	catch(Exception e)
	{
		e.getMessage();
	}
	%>	
	
			</tbody>
		</table>
		</div>
		</div>

	<script type="text/javascript" src="image/js/jquery-ui.min.js"></script>

	<script type="text/javascript" src="image/js/excanvas.js"></script>
	<script type="text/javascript" src="image/js/jquery.visualize.js"></script>
	<script type="text/javascript" src="image/js/jquery.tablesorter.js"></script>
	<script type="text/javascript"
		src="image/js/jquery.date_input.min.js"></script>
	<!--input Date-->
	<script type="text/javascript"
		src="image/js/jquery.minicolors.min.js"></script>

	<script type="text/javascript" src="image/js/jquery.wysiwyg.js"></script>
	<script type="text/javascript" src="image/js/jquery.fancybox.js"></script>
	<script type="text/javascript" src="image/js/jquery.tipsy.js"></script>
	<script type="text/javascript" src="image/js/custom.js"></script>



</body>
</html>
