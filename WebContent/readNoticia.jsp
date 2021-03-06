<%@page import="model.Comentario"%>
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
<link rel="stylesheet" href="css/ler.css" />

</head>
<body>
	<%
		Noticia noticia = (Noticia) request.getAttribute("noticia");
	%>
	<%
		ArrayList<Comentario> listaComentarios = (ArrayList<Comentario>) request.getAttribute("listaComentarios");
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
	<div class="container">
		<section>
			<h2>${noticia.titulo}</h2>
			<br>
			<p>${noticia.descricao}</p>
			<br>
			<hr>
			<br>
			<p>${noticia.texto}</p>
		</section>

		<section>
			<h3>Comentários</h3>
			<br>
			<hr>
			<br>
			<c:forEach var="comentario" items="${listaComentarios}">
				<div class="card bg-light my-3">
					<div class="card-header">${comentario.nome}</div>
					<div class="card-body">
						<p>${comentario.texto}</p>
					</div>
				</div>
			</c:forEach>
		</section>

		<section>
			<form class="form" action="LerNoticia.do?id=${noticia.id}"
				method="post">
				<h4>Comentar</h4>
				<input type="text" class="form-control my-2" name="nome"
					placeholder="Digite seu nome" /> <input type="text"
					class="form-control my-2" name="texto"
					placeholder="Digite seu comentário" /> <input type="submit"
					class="btn btn-success my-2" value="Enviar" />
			</form>
		</section>
	</div>
	<br>
</body>
</html>