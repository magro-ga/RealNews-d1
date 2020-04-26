<%@page import="model.Noticia"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Real News</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/96a514acf1.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/global.css" />
<link rel="stylesheet" href="css/listar.css" />
</head>
<body>
	<%
		ArrayList<Noticia> listaNoticias = (ArrayList<Noticia>) request.getAttribute("listaNoticias");
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<a style="color: white; font-size: 20px" href="index.html"
			class="navbar-brand">Real News</a>
		<div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a style="color: white"
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Notícias</a>
					<div style="background-color: dimgray" class="dropdown-menu"
						aria-labelledby="navbarDropdown">
						<a style="color: white" class="dropdown-item"
							href="ListarNoticias.do">Cadastrar Notícias</a> <a
							style="color: white" class="dropdown-item"
							href="ConsultarNoticias.do">Visualizar Notícias</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<h2 style="color: white">Notícias</h2>

	<div class="container-fluid p-3">
		<c:forEach var="noticia" items="${listaNoticias}">
			<div class="card my-3">
				<div style="background-color: #F0F8FF;" class="card-header"><h3>${noticia.titulo}</h3></div>
				<div class="card-body">
					<p>${noticia.descricao}</p>
					<a href="LerNoticia.do?id=${noticia.id}" class="stretched-link"
						title="Clique para ler"></a>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>