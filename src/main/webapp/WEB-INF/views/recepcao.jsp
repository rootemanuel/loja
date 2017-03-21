<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Boutique - eCommerce</title>
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/bootstrap.min.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/font-awesome.min.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/owl.carousel.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/chosen.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/lightbox.min.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/pe-icon-7-stroke.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/jquery.mCustomScrollbar.css"/>'
	type="text/css" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/loja/css/style.css"/>'
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Montserrat">
<link
	href='https://fonts.googleapis.com/css?family=Playfair+Display:400italic,400,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto:300,100,100italic,300italic,400,400italic,500,500italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/owl.carousel.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/chosen.jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/Modernizr.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/lightbox.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/masonry.pkgd.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/isotope.pkgd.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery.parallax-1.1.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/masonry.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/loja/js/functions.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js"></script>
</head>
<body class="home">
	<!-- BODY PRINCIPAL - INICIO -->
	<div class="main-container no-sidebar">
		<c:if test="${empty cadastro}">
			<c:redirect url="/404" />
		</c:if>
		<div class="container">
			<div class="main-content">
				<div class="section-about ">
					<div class="container">
						<div class="section-title text-center style7 margin-top-60">
							<h3>Cadastrado efetuado com sucesso!</h3>
						</div>

						<div class="row">
							<div class="col-sm-10 col-sm-offset-1">
								<blockquote class="style2 margin-bottom-10">Seja
									Bem-vindo!</blockquote>
								<blockquote class="style2 margin-bottom-10">
									Temos orgulho e total responsabilidade de tê-lo como nosso
									cliente e trabalhamos constantemente para manter esse
									relacionamento. Boas compras! <a class="newsletter-info"
										href="login">Faça seu login</a>
								</blockquote>

							</div>
						</div>
						<div class="text-center GreatVibes">Equipe MONSTRÃO</div>
					</div>
					<div class="row  margin-top-50">
						<div class="col-sm-12 col-md-4">
							<div class="element-icon style2">
								<div class="icon">
									<i class="flaticon flaticon-origami28"></i>
								</div>
								<div class="content">
									<h4 class="title">ENVIO RÁPIDO</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-4">
							<div class="element-icon style2">
								<div class="icon">
									<i class="flaticon flaticon-curvearrows9"></i>
								</div>
								<div class="content">
									<h4 class="title">DEVOLUÇÃO CASOS DE TROCAS</h4>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-4">
							<div class="element-icon style2">
								<div class="icon">
									<i class="flaticon flaticon-headphones54"></i>
								</div>
								<div class="content">
									<h4 class="title">SUPORTE ONLINE 24/7</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>