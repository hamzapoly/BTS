<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="stylesheet" href="css/css3menu1/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu2/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu3/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu4/style.css" type="text/css" />
<link rel="stylesheet" href="css/css3menu5/style.css" type="text/css" />
<link rel="stylesheet"
	href="./css/demos-header.css"
	type="text/css" media="all"></link>
	<style type="text/css">
BODY {
	margin: 0;
	padding: 0;
	font: 9pt/12pt "Lucida Grande", "Lucida Sans Unicode", "Lucida",
		"Bitstream Vera Sans", Verdana, Arial, Helvetica, sans-serif;
	color: #000;
	background: #FFF;
}

#mainhead IMG {
	border: 0;
}

#mainhead A {
	color: #FFF;
	text-decoration: none;
}

#mainhead A:hover {
	text-decoration: underline;
}

#mainhead A:active,#mainhead A:focus {
	outline: 0;
}

.mbody {
	width: 728px;
	margin: 0 auto;
	overflow: hidden;
	zoom: 1;
}

#mainhead {
	color: #FFF;
	background: #222;
}

#mainhead H1,#mainhead H2 {
	float: left;
	margin-right: 40px;
}

#mainhead H1 {
	margin-top: 14px;
}

#mainhead H2 DFN {
	font-size: 8pt;
	line-height: 16pt;
	font-style: normal;
	color: #888;
}

#mainbody {
	margin: 0;
	padding-top: 20px;
	font-family: "Verdana", "Arial", sans-serif;
	font-size: 8.5pt;
	color: #000;
}
</style>
    <link rel="stylesheet" type="text/css" href="style.css">
		<script src="cufon-yui.js" type="text/javascript"></script><style type="text/css">cufon{text-indent:0!important;}@media screen,projection{cufon{display:inline!important;display:inline-block!important;position:relative!important;vertical-align:middle!important;font-size:1px!important;line-height:1px!important;}cufon cufontext{display:-moz-inline-box!important;display:inline-block!important;width:0!important;height:0!important;overflow:hidden!important;text-indent:-10000in!important;}cufon canvas{position:relative!important;}}@media print{cufon{padding:0!important;}cufon canvas{display:none!important;}}</style>
		<script src="ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h3',{ textShadow: '1px 1px #000'});
			Cufon.replace('.back');
		</script>
	<link rel="stylesheet"
		href="./css/demo-errors.css"
		type="text/css" media="all"></link>
		<script
			src="./css/jquery-1.4.2.min.js"
			type="text/javascript"></script>
		<script
			src="./css/jquery.form-validation-and-hints.js"
			type="text/javascript"></script>
		<script>
			window["_GOOG_TRANS_EXT_VER"] = "1";
		</script>

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
</style>

<!--[if lt IE 9]>
	<style type="text/css" media="all"> @import url("image/css/ie.css"); </style>
	<![endif]-->



<script type="text/javascript" src="image/js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="image/js/header-effect.js"></script>

<script src="image/js/jquery-1.4.2.js" type="text/javascript"></script>
<script src="image/js/formwizard.js" type="text/javascript"></script>

<script type="text/javascript">
	var myform = new formtowizard({
		formid : 'feedbackform',
		persistsection : true,
		revealfx : [ 'slide', 500 ]
	});
</script>

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

		<br></br>	<br></br>

	  <h2>Ajout d'un nouveau Utilisateur</h2>
		<div class="wizard-box">
			<form id="feedbackform" action="/BTS/Ajout_User" method="post">

				<fieldset class="sectionwrap">
					<legend>
						<font color="Blue">Niveau 1</font>
					</legend>
					<div class="field required">
						<p>
							<strong>Nom : </strong><br /> <input id="nom" name="nom"
								class="text" type="text" size="35" /> <span class="iferror">Champ Obligatoire *</span>
						</p>
					</div>
	
					<div class="field required">
					<table>
						<tr>
						<td>
							Prénom:<br /> <input name="prenom" id="aa" type="text"class="text" size="35" onkeyup="remplir()"/>
								<span class="iferror">Champ
								Obligatoire *</span>
								</td>
								
							
								</tr>
								</table>
						
					</div>

					<div class="field required">
						<p>
							Identifiant: <br/><input name="login" id="matricule_cnss" type="text" class="text"
								 size="35" />
						</p>
						<span class="iferror">Champ
								Obligatoire *</span>
					</div>
					

<div class="field required">
						<p>
							Mot de Passe:<br /> <input class="text" name="mot_pass"
								id="recette_revau_mer" type="text" size="35" /><span class="iferror">Champ Obligatoire *</span>
						</p>
				</div>
				</fieldset>

				<fieldset class="sectionwrap">
					<legend>
						<font color="Blue">Niveau 2</font>
					</legend>


					

				
				<!--  	
				</fieldset>

				<fieldset class="sectionwrap">
					<legend>
						<font color="blue">Niveau 3</font>
					</legend>
				-->
				
					

					<input type="submit" class="submit"  />
				</fieldset>
			</form>
			
				
			
			
		</div>


		






</div>

<script type="text/javascript" src="jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
					//the form wrapper (includes all forms)
				var $form_wrapper	= $('#form_wrapper'),
					//the current form is the one with class active
					$currentForm	= $form_wrapper.children('form.active'),
					//the change form links
					$linkform		= $form_wrapper.find('.linkform');
						
				//get width and height of each form and store them for later						
				$form_wrapper.children('form').each(function(i){
					var $theForm	= $(this);
					//solve the inline display none problem when using fadeIn fadeOut
					if(!$theForm.hasClass('active'))
						$theForm.hide();
					$theForm.data({
						width	: $theForm.width(),
						height	: $theForm.height()
					});
				});
				
				//set width and height of wrapper (same of current form)
				setWrapperWidth();
				
				/*
				clicking a link (change form event) in the form
				makes the current form hide.
				The wrapper animates its width and height to the 
				width and height of the new current form.
				After the animation, the new form is shown
				*/
				$linkform.bind('click',function(e){
					var $link	= $(this);
					var target	= $link.attr('rel');
					$currentForm.fadeOut(400,function(){
						//remove class active from current form
						$currentForm.removeClass('active');
						//new current form
						$currentForm= $form_wrapper.children('form.'+target);
						//animate the wrapper
						$form_wrapper.stop()
									 .animate({
										width	: $currentForm.data('width') + 'px',
										height	: $currentForm.data('height') + 'px'
									 },500,function(){
										//new form gets class active
										$currentForm.addClass('active');
										//show the new form
										$currentForm.fadeIn(400);
									 });
					});
					e.preventDefault();
				});
				
				function setWrapperWidth(){
					$form_wrapper.css({
						width	: $currentForm.data('width') + 'px',
						height	: $currentForm.data('height') + 'px'
					});
				}
				
				/*
				for the demo we disabled the submit buttons
				if you submit the form, you need to check the 
				which form was submited, and give the class active 
				to the form you want to show
				*/
				$form_wrapper.find('input[type="submit"]')
							 .click(function(e){
								e.preventDefault();
							 });	
			});
        </script>

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
