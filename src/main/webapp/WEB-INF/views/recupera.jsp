<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
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

<script type="text/javascript">
$(document).ready(function() {
	$("#cpf").inputmask("999.999.999-99",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });	
});
</script>

</head>
<body class="">
	<!-- BODY PRINCIPAL - INICIO -->
	<div class="main-container no-sidebar">
		<div class="container">
			<div class="main-content">
				<div class="page-title">
					<h3>RECUPERAR SENHA</h3>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<form:form id="Recupera" action="recupera" method="post"
							commandName="user">
							<div class="form-checkout">
								<h5 class="form-title">INFORME SEU CPF</h5>
								<p>
								<h6 class="form">CPF</h6>
								<form:input id="cpf" path="cpf" />
								<form:errors path="cpf" cssClass="alert-danger" element="div" />
								</p>
								<input id="recuperaBtn" type="submit" class="button" name="recupera"
									value="RECUPERAR">
							</div>
							<div class="form-checkout">
								<form:errors cssClass="alert-danger" element="div" />
							</div>
						</form:form>
					</div>
					<div class="col-sm-6">
						<div class="newsletter style2">
							<div class="section-title text-center">
								<h3>QUERO ME CADASTRAR</h3>
							</div>
							<i class="newsletter-info">Cadastre-se e tenha acesso as
								nossas Promoções &amp; Novidades</i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- BODY PRINCIPAL - FIM  -->
</body>
</html>