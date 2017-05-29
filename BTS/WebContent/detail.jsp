
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.util.*"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
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
<style>
#datepicker {
  background:#3b8ec2 url(css/media/images/date.png)  97% 50% no-repeat ;
  background-size:25px;
  margin-left:10px;
  font-size:15px;
  font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
  cursor:pointer;
  
}
#datepicker::-webkit-inner-spin-button {
  display: none;
}
#datepicker::-webkit-calendar-picker-indicator {
  opacity: 0;
}
input {
  border: 2px solid #fe720a;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  width: 140px;
  margin-bottom:5px;
}</style>



	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/reset.css" /> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/main.css" />
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/2col.css" title="2col" />
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/style.css" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
	 	<!-- <script type="text/javascript" src="js/accueilmenu.js"></script>-->
	 			<script>
	$(document).ready(function(){
		var dt = new Date();  
		// Display the month, day, and year. getMonth() returns a 0-based number.  
		var month = dt.getMonth()+1;  
		var day = dt.getDate();  
		var year = dt.getFullYear();
		var hour = dt.getHours();
		var minute = dt.getMinutes();
		$('#spandate').html(year + '-' + month + '-' + day );
		$('#spantime').html(hour + ':'+ minute);
		  });
		</script>
		<script>
		$(document).ready(function() {
			var path= window.location.pathname.split("/").pop();
			});
		</script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(document.ready(function() {
  $("#datepicker" ).datepicker({dateFormat:'yyyy-mm-dd'});
}));
</script>
</script>
<title>Accueil</title>
</head>
<body>
<div class="backgroundimg"></div>

	<div id="main">

	<!-- Tray -->
	<div id="tray" class="box" style="background-color:rgba(255,255,255,0.6);height:90px;margin-bottom:45px;">
		<img src="css/media/images/logo.png"  style="position:relative;z-index:1000"/><!-- Active -->
				<!-- Menu -->
			<img src="css/media/images/logosibtel1.png" alt="" style="position:absolute;right:0;top:0"/>
		<div id="menu">
		<ul>
			<li><a href="accueil.jsp">Accueil</a></li>
			<li><a href="#">Fichiers</a>
				<ul>
					<li><a href="detail.jsp">Fichiers Détailés</a></li>
					<li><a href="global.jsp">Fichiers Globales</a></li>				
				</ul>
			</li>
			<li><a href="#">Situations</a>
							<ul>
					<li><a href="#">Situation Nette</a></li>
					<li><a href="#">Compte Rendu</a></li>				
				</ul></li>
						<li><a href="index.jsp" class="decon">Déconnection</a></li>
		</ul>
		</div>
	</div>	
	</div> <!--  /tray -->
	<div style="font-family: 'Josefin Sans', sans-serif;font-size:25px;height:50px;margin-left:20px;"><h2>Fichiers Détails</h2></div>
	
<div class="container" style="position:absolute;height:auto;width:100%;margin-top:0px;background-color:rgba(0,0,0,0.8);">
		
		
		<form  style="font-size:14px;font-family:'Lato', sans-serif;color:white;" method="post" action="/BTS/detail_r">
	
	<div id="searchingfilters">
			 <div id="filter" >
								<label for="sens"><span>*</span>Sens:</label>
								<div class="styled-select blue">		
								<select id ="sens" name="sens"  required="required">
								<option value="2">Envoyé</option>
								<option value="1" selected>Reçus</option>
								</select>
							

								</div>
			</div>
			<div id="filter">
													
								<label for="codval"><span>*</span>Code Valeur:</label>
      						    <div class="styled-select blue" >
								<select id ="codval" name="codval"  required="required">
								<option value="30">Cheque</option>
							    <option value="10" selected>VRT</option>
							    <option value="10" selected>PREL</option>
							    <option value="10" selected>LC</option>
							    <option value="10" selected>VRT</option>
							    <option value="10" selected>VRT</option>
							    </select>
							    </div>
			</div>					
					
								<!-- <label for="coden"></label>
								<span>*</span>Code d'enregistrement<input name="coden" id="coden" type="text"class="text" size="15" value="0" onkeyup="remplir()" />
								-->
			
			
			<div style="padding:5px;
	margin:0 30px auto;
	display:inline-block;
	float:left;
	width:30%;
	">

								<label for="date" style="float:left;"><span>*</span> Date d'Enregistrement:</label>
      							<input type="date" id="datepicker" name="date">

				  </div>
						<input type="submit" id ="button1" class="submit" />
	  </div>
   </form>
		
		
		
			<table cellpadding="0" cellspacing="0" border="0"
					class="display normal-t" style="width:90%;position:relative;margin-top:50px;opacity:0.9;text-align:center;font-family:none;font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif;">
					<thead>

				<tr>
				
					
<th>	Sens	</th>
<th>	Codval	</th>
<th>	Natrem	</th>
<th>	Codrem	</th>
<th>	Codcar	</th>
<th>	Date opération	</th>
<th>	Numlot	</th>
<th>	Code enregistrement	</th>
<th>	Codedev	</th>
<th>	Rang	</th>
<th>	Monvir	</th>
<th>	Numvir	</th>
<th>	Ribdon	</th>
<th>	Nomdon	</th>
<th>	Coddes	</th>
<th>	Ribben	</th>
<th>	Nomben	</th>
										
					
				  
			
				</tr>
					</thead>
				<tbody>
				<%=request.getParameter("str")%>
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
	
	</div>

</form>
</body>
</html>






















</body>
</html>
