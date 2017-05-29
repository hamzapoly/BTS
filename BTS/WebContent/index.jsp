<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="en" />
	<meta name="robots" content="noindex,nofollow" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
 	
 	<!-- WRITE YOUR CSS CODE HERE -->
 	<link rel="shortcut icon" href="faviconm.ico" type="image/x-icon">
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/reset.css" /> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/main.css" /> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/2col.css" title="2col" />
	<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="css/css/col1.css" title="col"/> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/mystyle.css" />	
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/css/style.css" />
 
 
 
 
 
 
 
 	<script type="text/javascript" src="css/js/jquery2.js"></script>
 	<!-- <script type="text/javascript" src="css/js/jquery.js"></script>-->
	<script type="text/javascript" src="css/js/switcher.js"></script>
	<script type="text/javascript" src="css/js/toggle.js"></script>
	<script type="text/javascript" src="css/js/ui.core.js"></script>
	<script type="text/javascript" src="css/js/ui.tabs.js"></script>
		<script>
		$(document).ready(function(){

		$("#mailinput").focusin(function(){
 			$('.mail-icon').css({"display":"none"});		});
		$("#mailinput").focusout(function(){
 			$('.mail-icon').css({"display":"block"});		});
		$("#password").focusin(function(){
 			$('.pass-icon').css({"display":"none"});		});
		$("#password").focusout(function(){
 			$('.pass-icon').css({"display":"block"});		});
		});
	</script>
	<script>
	function checkrole(){
		$checked=$('input[name="selector"]:checked').attr('id');
		if  (($checked=='Administrateur') && ($('input[type="text"]')!= "") && ($('input[type="password"]'!="")) )
		{
		   $('#f').attr('action', "/BTS/authentification");
		   //$('#f').find('[type="submit"]').trigger('click');
		   $('#f').submit();
		}
 		else if  (($checked=="Utilisateur") && ($('input[type="text"]')!= "") && ($('input[type="password"]'!="")) )
 		   {$('#f').attr('action', "/BTS/authentificationuser");
		   $('#f').submit();}	
 		else 
			alert("Merci de choisir votre Role");
	}
	</script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".tabs > ul").tabs();
	});
	</script>
	 
	 
	<title>BTS</title>
</head>




<body>
<div class="backgroundimg"></div>

<form id="f" action="/BTS/authentification" method="post">
	<div id="main">

	<!-- Tray -->
	<div id="tray" class="box" style="background-color:rgba(255,255,255,0.6)">
		<img src="css/media/images/logo.png"  style="position:relative;z-index:1000"/><!-- Active -->
				<!-- Menu -->
		<div id="menu" class="box">

		<ul class="box">
			<li>Administrateur</li>
			<li>Utilisateur</li>
			
				
		
		</ul>

		</div>
			<img src="css/media/images/logosibtel1.png" alt="" style="position:absolute;right:0px;top:0px"/>
	</div>	
		<!-- Active -->
			<!--<p class="f-left box">  -->

			<!-- Switcher -->
			<!-- <span class="f-left" id="switcher">
				<a href="#" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="css/design/switcher-1col.gif" alt="1 Column" /></a>
				<a href="#" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="css/design/switcher-2col.gif" alt="2 Columns" /></a>
			</span>-->

			 <strong></strong>

		</p>

	</div> <!--  /tray -->
	<!-- <hr class="noscreen" />-->

 <!-- /header -->

	<!-- <hr class="noscreen" />-->

	<!-- Columns -->
	<div id="cols" class="box" >
		<!-- Aside (Left Column) -->
	 <!-- /aside -->

		<hr class="noscreen" />

		<!-- Content (Right Column) -->
		<!-- <div id="content" class="box">

			<h1>	<marquee>LA Banque -BTS - Banque Tunisienne de Solidarite</marquee>     </h1>
			

			

			
			

			
			
			
				

		
	
			<fieldset>
			<center>
			<img src="icon/d.jpg" />
			</center>
			</fieldset>-->

			<!-- Definition List -->
			

			<!-- Definition List -->
	
			<!-- <dl>
				
			</dl>

		</div> --><!-- /content -->
	</div> <!-- /cols -->

	<hr class="noscreen" />
	 <div style="margin:auto;margin-top:60px;border:4px solid rgba(10,10,10,0.6);height:450px;width:400px;background-color:rgba(0, 0, 0, 0.5);z-index:1000;">
	 
	 <div class="loginheader" style="width:100%;height:20%;border-bottom:2px solid gray">
	 <img src="css/media/images/loginheader.png" style="margin-top:20px;margin-left:20px;height:50px;width:50px;left:0"></img>
	 <span style="font-size:30px;	font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif;margin-top:20px">Login</span></div>
	 <div class="loginbody" style="width:100%;height:60%;border-bottom:2px solid gray">
	 
	    <div class="input">
    	<input type="text" id="mailinput" placeholder="Login" name="user" required />
      		<span><i class="mail-icon"></i></span>
    	</div>
        <div class="input">
    		<input type="password" id ="password" placeholder="Password" name ="pass" required />
    		<span><i class="pass-icon"></i></span>
    	</div>
	 
<div class="container">
	

  <ul>
  <li>
    <input type="radio" id="Administrateur" name="selector">
    <label for="Administrateur">Administrateur</label>
    
    <div class="check"></div>
  </li>
  
  <li>
    <input type="radio" id="Utilisateur" name="selector">
    <label for="Utilisateur">Utilisateur</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
</ul>
</div>


	 
	 </div>
	 
	
	 <div class="logincmd" style="width:100%;height:20%;">
	<!-- <a href="#" style="text-decoration:none;" onclick="checkrole()" type="submit">-->
	 <input class="login" type="submit" onclick="checkrole()" value="Connexion">
	 <!-- <div class="login">-->
	 </div>
	 </div>

	<!-- Footer -->
	<div id="footer" class="box">

		<p class="f-left"><a href="#"></a>

		<p class="f-right"><a href="http://www.adminizio.com/"></a></p>

	</div> <!-- /footer -->

</div> <!-- /main -->
</form>
</body>
</html>

