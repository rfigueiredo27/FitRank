<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="theme-color" content="#6f3d94" />
<title>FitRank</title>
<link rel="stylesheet" type="text/css" href="./style/css/FitRank.css">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<script src="./js/jquery-1.11.2.js"></script>
<script src="http://connect.facebook.net/pt_BR/all.js"></script>
<script>
	$(document).ready(function() {
			FB.init({
				appId : '749336888463283', //Id do aplicativo ()
				status : true, // verifica status do login
				cookie : true, // habilita cookies para permitir acesso via servidor
				xfbml : true, // habilita parser XFBML
				version : 'v2.5'
			});

			$('#entra').on("click",
				function entra() {
					// 				FB.login(function(){
	
					/*FB.login(function(response) {
					alert(response.status);
					}, {scope: 'email,user_likes,user_actions.fitness'} );*/
					var token = "";
					FB.getLoginStatus(function(response) {
								
						if (response.status === 'connected') {
	
							token = response.authResponse.accessToken;
// 							window.location = location.origin
// 									+ location.pathname
// 									+ "InitUser?token="
// 									+ token;
							
							$("#token").val(token);
							
							$("#formSubmit").submit();

							// 					        }else if(response.status === 'not_authorized'){

							// 					          alert("N�o autorizado");

						} else {

							FB.login(function(response) {
									if (response.authResponse) {
										token = response.authResponse.accessToken;
										$("#token").val(token);
										
										$("#formSubmit").submit();
									
// 										alert(response.session);
// 										alert("entrou");
// 										$(
// 												'#fb_login_form')
// 												.submit();
										
											token = response.authResponse.accessToken;
											 
// 											window.location = location.origin
// 													+ location.pathname
// 													+ "InitUser?token="
// 													+ token;
											
											$("#token").val(token);
											
											$("#formSubmit").submit();

										
									} else {
										console
												.log("O usu�rio n�o permitiu acesso aos dados!");
									}

// 									if (response.status == "connected"
// 											&& response.authResponse) {
// 										token = response.authResponse.accessToken;
// 										window.location = location.origin
// 												+ location.pathname
// 												+ "InitUser?token="
// 												+ token;

// 										$("#token").val(token);
										
// 										$("#formSubmit").submit();
// 									}

								},
								{
									scope : 'email,user_friends,user_actions.fitness'
								});//user_birthday
							// 					        	if(!popup) { 
							// 									   //an alert in this example
							// 									   alert('Parece que seu navegador est� bloqueando o popup para autorizar a nossa conex�o com o Facebook. \nPara continuar ser� necess�rio desabilitar o bloqueio.');
							// 									}
						}
					});
	
				});
		});
</script>
</head>
<body>
	<div class="wrapper">
		<div class="preheader"></div>
		<div class="content">
			<div class="headerContent">
				<div class="siteHeader">
					<div>
						<div class="logo">FitRank</div>
					</div>
					<div>
					
						<p class="text" style="text-align: center;">Para socializar as suas atividades f�sicas usando o FitRank </p>
						<p class="text" style="text-align: center;">� necess�rio se logar com a conta do Facebook.</p>
						<input type="button" id="entra"
							style="cursor: pointer; margin: 0 auto; margin-top: 35px; display: block; border: none; width: 288px; height: 62px; background-image: url('https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xaf1/t39.2178-6/851579_209602122530903_1060396115_n.png')"
						/>
					</div>
				</div>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<div id="fb-root"></div>
	<form action="Main" id="formSubmit" style="display: none;" method="post">
    	<input type="hidden" id="token" name="token" />
	</form>
</body>
</html>
