<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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

body {
	background-image: "image/im2.jpg";
}
</style>

</head>

<body>
	<center>
		<img src="image/bts.jpg" alt="" />
	</center>
	<hr />
	<hr />
	<hr />
	<hr />

	<div id="content">
		<div id="login">

			<h2>BTS</h2>
			<div class="textbox">
				<h2>
					To Login Just Click On <strong>Login</strong>
				</h2>


				<div class="textbox_content">
					<div class="message success"><%
      // Récupération du message d'erreur 
      String erreur = (String) request.getAttribute("erreur");
      // Affichage du message s'il existe
      if (erreur != null) { %>
            <strong>Erreur : vous obtenez l'erreur "Invalid login/password</strong>
      <%
      } %>
      </div>
					<form action="/BTS/authentification" method="post">
						<table width="100%">
							<tr>
								<td width="40%"><p>
										<label>Identifiant :</label>
									</p>
								</td>
								<td align="right">
								<input class="text" required="required" type="text" name="user" style="width: 94%" placeholder="saisissez votre pseudonyme"/>
								</td>
							</tr>

							<tr height="20">
								<td>&nbsp;</td>
								<td></td>
							</tr>


							<tr>
								<td><p>
										<label>Mot de Passe :</label>
									</p>
								</td>
								<td align="right"><input class="text" required="required" type="password"
														name="pass" id="password" style="width: 94%"
									 placeholder="saisissez votre password"/>
								</td>
							</tr>
							<tr height="20">
								<td>&nbsp;</td>
								<td></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td align="right"><input type="submit" class="submit"
									value="Login" />
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
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
	<script type="text/javascript" src="image/js/slider2.js"></script>
</body>
</html>
