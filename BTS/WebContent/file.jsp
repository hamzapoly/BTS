
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="en" />
	<meta name="robots" content="noindex,nofollow" />
	<link rel="shortcut icon" href="faviconm.ico" type="image/x-icon">
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/reset.css" /> <!-- RESET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/main.css" /> <!-- MAIN STYLE SHEET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/2col.css" title="2col" /> <!-- DEFAULT: 2 COLUMNS -->
	<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="css/css/1col.css" title="1col" /> <!-- ALTERNATE: 1 COLUMN -->
	<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/main-ie6.css" /><![endif]--> <!-- MSIE6 -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/style.css" /> <!-- GRAPHIC THEME -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/mystyle.css" /> <!-- WRITE YOUR CSS CODE HERE -->
	<script type="text/javascript" src="css/js/jquery.js"></script>
	<script type="text/javascript" src="css/js/switcher.js"></script>
	<script type="text/javascript" src="css/js/toggle.js"></script>
	<script type="text/javascript" src="css/js/ui.core.js"></script>
	<script type="text/javascript" src="css/js/ui.tabs.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".tabs > ul").tabs();
	});
	</script>
	<title>Fichier</title>
</head>

<body>

<div id="main">

	<!-- Tray -->
	<div id="tray" class="box">

		<p class="f-left box">

			<!-- Switcher -->
			<span class="f-left" id="switcher">
				<a href="#" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="css/design/switcher-1col.gif" alt="1 Column" /></a>
				<a href="#" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="css/design/switcher-2col.gif" alt="2 Columns" /></a>
			</span>

			 <strong></strong>

		</p>

		<p class="f-right"> <strong><a href="#"></a></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="http://localhost:8081/application_BCF_PFE/index.jsp" id="logout">Log out</a></strong></p>

	</div> <!--  /tray -->

	<hr class="noscreen" />

	<!-- Menu -->
	<div id="menu" class="box">

		<ul class="box f-right">
			<li><a href="#"><span><strong>Visit Site &raquo;</strong></span></a></li>
		</ul>

		<ul class="box">
			<li><a href="http://localhost:8081/application_BCF_PFE/indexclient.jsp"><span>Acceuil</span></a></li> <!-- Active -->
			<li id="menu-active"><a href="http://localhost:8081/application_BCF_PFE/file.jsp"><span>Fichier</span></a></li>
			
			<li><a href="http://localhost:8081/application_BCF_PFE/contactc.jsp"><span>Contact</span></a></li>
		
		</ul>

	</div> <!-- /header -->

	<hr class="noscreen" />

	<!-- Columns -->
	<div id="cols" class="box">

		<!-- Aside (Left Column) -->
		<div id="aside" class="box">

		<div class="padding box">

				<!-- Logo (Max. width = 200px) -->
				<p id="logo"><a href="#"><img src="css/js/logo.jpg" alt="Our logo" title="Visit Site" /></a></p>

				<!-- Search -->
							 <form id="search" action="http://localhost:8081/application_BCF_PFE/file.jsp" >
					<fieldset>
						<legend>Chercher Votre fichier</legend>

						<p><input type="text" class="input-text" size="17" name="p1" id="p1" required="required" placeholder=" Taper Votre login"   /> <input type="submit" value="OK" class="input-submit-02" /><br />
						

					
					</fieldset>
				</form>
				<br>
<form action="#" method="get" id="search">
		<fieldset>
		<legend></legend>
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="180" height="150">
                                                                  <param name="movie" value="css/js/cal.swf">
                                                                  <param name="quality" value="high">
                                                                  <embed src="css/js/cal.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="180" height="160"></embed>
                                                                </object>
				
			</fieldset>
			</form>
				
			</div> <!-- /padding -->

			

		</div> <!-- /aside -->

		<hr class="noscreen" />

		<!-- Content (Right Column) -->
		<div id="content" class="box">

			

			<h1>	<marquee>Immeuble EL Moustakbel  5 Rue Ali Dargouth-1001 Tunis 1 ere etages BN 10 Matricule Fiscale:181 785 A/A/P/000-Tel:71 339 924- Fax:71 339 472 Site web:www.bcfmarzouk.com - E-mail:mohamed@marzouk.com/beligh@bcmarzouk.com</marquee>     </h1>
			

			

			
			

		
			
			
				

		
	
			<fieldset>
			<h3>Votre Fichier</h3>
			  <div class="textbox_content" style="padding: 0px;">
				<table cellpadding="0" cellspacing="0" border="0"
					class="display normal-t">
					<thead>
					
				<tr>
					<th width="50%" >Num Fichier</th>
					
					<th width="50%" >Nom fichier</th>
				
					
					<th><input type="image" src="css/js/dwn.jpg">
					</th>
			
				</tr>
					</thead>
				<tbody>
				<%
	String name=request.getParameter("p1");
	String connectionURL = "jdbc:mysql://db4free.net:3306/mourad";
	Connection con=null;
	try{      
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con=DriverManager.getConnection(connectionURL,"mourad","mourad");      
		Statement stmt=con.createStatement();
		String strQuery = "select * from file where  first_name='"+name+"'";

		ResultSet rs = stmt.executeQuery(strQuery);
		int sno=0;
		while(rs.next())
		{
			sno++;
			%>
				<tr>
					<td><%=sno%></td>
					
				<td><%=rs.getString(3)%></td>
				
							
							<td><a href="http://localhost:8081/application_BCF_PFE/downloadfile.jsp?imgid=<%=rs.getInt(1)%>"><a href="http://localhost:8081/application_BCF_PFE/downloadfile.jsp?imgid=<%=rs.getInt(1)%>" width="5" height="5"><input type="image" src="css/js/dwn.jpg"/></a></td>
					
					
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


		
			</fieldset>

			<!-- Definition List -->
			

			<!-- Definition List -->
	
			<dl>
				
			</dl>

		</div> <!-- /content -->

	</div> <!-- /cols -->

	<hr class="noscreen" />

	<!-- Footer -->
	<div id="footer" class="box">

		<a href="#"></a>

<a href="http://www.adminizio.com/"></a>

	</div> <!-- /footer -->

</div> <!-- /main -->

</body>
</html>

