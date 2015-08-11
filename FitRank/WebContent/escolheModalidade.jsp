<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Escolha a modalidade</title>
<style>
	img {
		border: 3px solid;
		border-color: blue;
		border-radius: 50%;
		-webkit-border-radius: 50%;
    	-moz-border-radius: 50%;
 		padding: 10px;
	}
	
	img:hover {
		cursor: pointer;
	}
</style>
<script>
	
	<%if ( (String) request.getAttribute("erro") != null) {%>
		alert('<%=(String) request.getAttribute("erro")%>');
	<%}%>
	function goToEscolhaRanking(modalidade) {
		window.location = 'CarregaEscolhaRanking?modalidade=' + modalidade + '&token=' + '<%=(String) request.getAttribute("token")%>';
		
	}
</script>
</head>
<body>
<img src="imagem/bike11.png" onClick="goToEscolhaRanking('bikes')">
<img src="imagem/sprint.png" onClick="goToEscolhaRanking('runs')">
<img src="imagem/man-silhouette1.png" onClick="goToEscolhaRanking('walks')">
<img src="imagem/star212.png" onClick="">
</body>
</html>