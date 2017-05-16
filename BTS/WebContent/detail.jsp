
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.util.*"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
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
			<a href="#">LA Banque -BTS - Banque Tunisienne de Solidarité </a>
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
		
	  
	     
	 	    <li class="topmenu"><a href="archiver.jsp" style="width:140px;"><img src="css/fch.png" alt="Fichier"/>Archiver Fichier</a></li>
</ul>





	</div>
	<!-- #sidebar ends -->






	<div id="content">

		<!--<div class="breadcrumb">

			<a href="#">Home</a> &raquo; <a href="#">Level 2</a> &raquo; <a href="#">Level 3</a> &raquo; Page navigation
		</div>		<!-- .breadcrumb ends -->

		<ul id="crumbs">
			<li><a href="archiver.jsp" style="width:140px;">Fichier Global</a><a href="#"></a></li>
			<li><a href="detail.jsp" style="width:139px;">Fichier Détaillé </a><a href="#"></a></li>
			<li><a href="http://localhost:8081/application_BCF_PFE/facture.jsp" style="width:140px;">Valeur Global</a></li>
			<li><a href="http://localhost:8081/application_BCF_PFE/fichier.jsp" style="width:140px;"></a></li>
			<li><a href="http://localhost:8081/application_BCF_PFE/contact.jsp" style="width:140px;"></a></li>
			<li><a href="http://localhost:8081/application_BCF_PFE/message.jsp" style="width:120px;"></a>
			</li>
		</ul>
<br></br>





<div class="textbox" style="border: 0px;">
			<h3>Fichier  Détaillé </h3>
			  <div class="textbox_content" style="padding: 0px;">
				<center>
<img src="" />
</center>
	<center>
		<h1></h1>
		<img src="icon/y.jpg" style="width:100px;"/>
	
	</center>
		<center>
		<h1></h1>
		<form method="post" action="http://localhost:8080/BTS/Ajout_File" enctype="multipart/form-data">
			<table border="3">
			<caption><h3>Chercher Votre fichier </h3></caption>
				<tr>
					<td>Code Valeur </td>
					<td><input class="text" required="required" type="text" name="contenent" style="width: 94%" placeholder="saisissez donne"/></td>
					</tr>
					<tr>
					<td>Sens </td>
					<td><input class="text" required="required"  type="text" name="contenent" style="width: 94%" placeholder="saisissez donne"/></td>
					</tr>
						<tr> 
					<td>Code D'enregistrement</td>
					
				
					<td><input class="text" required="required"  type="text" name="contenent" style="width: 94%" placeholder="saisissez donne"/></td>
					</tr>
					<tr>
					<td>Date d'opération </td>
					<td><input class="text" required="required"  type="text" name="contenent" style="width: 94%" placeholder="saisissez donne"/></td>
				</tr>
				<tr>
					<td colspan="10">
						<input type="submit" value="Chercher Votre Fichier" style="width: 100%">
					</td>
				</tr>
			
			</table>
		</form>
	</center>
	<hr>
			<table cellpadding="0" cellspacing="0" border="0"
					class="display normal-t">
					<thead>
					
				<tr>
				
					
					<th width="10%" >sens</th>
						<th width="10%" >code valeur</th>
							<th width="10%" >natrem</th>
								<th width="10%" >codrem</th>
									<th width="10%" >codcar</th>
									
										<th width="40%" >dateope</th>
											<th width="40%" >numlot</th>
												<th width="40%" >codeenr</th>
													<th width="40%" >codedev</th>
														<th width="40%" >rang</th>
															<th width="40%" >mtot</th>
																<th width="40%" >nbrtot</th>
																	
					
				  
			
				</tr>
					</thead>
				<tbody>
				<%
	String name=request.getParameter("p1");
	String connectionURL = "jdbc:mysql://localhost:3306/bts";
	Connection con=null;
	try{      
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con=DriverManager.getConnection(connectionURL,"root","");      
		Statement stmt=con.createStatement();
		String strQuery = "select * from vrt_global";

		ResultSet rs = stmt.executeQuery(strQuery);
		int sno=0;
		while(rs.next())
		{
			sno++;
			%>
				<tr>
					<td><%=rs.getInt(1) %></td>
					<td><%=rs.getInt(2)%></td>
				<td><%=rs.getInt(3) %></td>
					<td><%=rs.getInt(4)%></td>
					<td><%=rs.getInt(5) %></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getInt(7) %></td>
					<td><%=rs.getInt(8)%></td>
					<td><%=rs.getInt(9) %></td>
					<td><%=rs.getInt(10)%></td>
					<td><%=rs.getInt(11) %></td>
					<td><%=rs.getString(12)%></td>
					
					
				
					
				</tr>
							<%
		}
		rs.close();
		con.close();
		stmt.close();
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
