<%@page import="model.Noticia"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="css/gerenciar.css" />
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
	<section>
		<h2>Notícias Cadastradas</h2>
		<div class="divCadastrar">
			<a class="btn btn-success btnCadastrar" href="createNoticia.html">Cadastrar
				Notícia</a>
		</div>
		<table style="background-color: white;" class="table table-striped">
			<tr  style="background-color: #F0F8FF;">
				<th><h1>ID</h1></th>
				<th><h1>Título</h1></th>
				<th></th>
				<th></th>
			</tr>
			<jstl:forEach var="noticia" items="${listaNoticias}">
				<tr>
					<td style="width: 10%">${noticia.id}</td>
					<td style="width: 70%">${noticia.titulo}</td>
					<td style="width: 10%"><a class="btn btn-success btnAlterar"
						href="AlterarNoticia.do?id=${noticia.id}" title="Alterar">
							Editar </a></td>
					<td style="width: 10%"><a class="btn btn-danger btnExcluir"
						href="ExcluirNoticia.do?id=${noticia.id}" title="Excluir">
							Excluir </a></td>
				</tr>
			</jstl:forEach>
		</table>
	</section>
</body>
</html>