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

<script type="text/javascript">
function preencheCep() {
	var cep = $("#cep").val();
	$.get("https://viacep.com.br/ws/"+cep+"/json/", function(response) {
		
		data = response;
		$("#estado").val(data.uf);
		$("#cidade").val(data.localidade);
		$("#endereco").val(data.logradouro);
		$("#bairro").val(data.bairro);
		
		$("#endereco").focus();
       
        console.log(data)
  	}).error(function(){
  		console.log("error function cep");
	});
}
$(document).ready(function() {
	$("#dtnasc").inputmask("d/m/y");
	$("#cpf").inputmask("999.999.999-99",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });
	$("#celular").inputmask("(99) 99999999[9]",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });
	$("#telefone").inputmask("(99) 9999-9999",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });
	$("#cep").inputmask("99999-999",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });
	
	$("#celular").bind("focusout", function(){
		var celalter = $("#celular").val().replace('-', '').replace(')', '').replace('(', '').replace(' ', '').replace('_', '');
		if(celalter.length > 10){
			$("#celular").inputmask("(99) 99999-9999",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });
		}else{
			$("#celular").inputmask("(99) 99999-999",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });
		}
	});

	$("#celular").on("click", function(){
		$("#celular").inputmask("(99) 999999999",{removeMaskOnSubmit: true, autoUnmask: true, showMaskOnHover: false, showMaskOnFocus: false });
	});
});
</script>

</head>
<body class="home">
	<!-- BODY PRINCIPAL - INICIO -->
	<div class="main-container no-sidebar">
		<div class="container">
			<div class="main-content">
				<form:form id="Cadastro" action="cadastro" method="post"
					commandName="user">
					<div class="row">
						<div class="margin-top-60 section-lasttest-blog full">
							<div class="container">
								<div class="section-title text-center">
									<h3>DADOS PESSOAIS</h3>
									<span class="sub-title">Informe seus dados pessoais</span>
								</div>
								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form">CPF</h6>
										<form:input id="cpf" path="cpf" style="width:250px;"/>
										<br/><form:errors path="cpf" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form">Sexo</h6>
										<form:select path="sexo" style="width:250px;">
											<form:option value="" label="Selecione" style="background-color:#f9f9f9;color:black;" />
											<form:option value="M" label="Masculino" style="background-color:#f9f9f9;color:black;" />
											<form:option value="F" label="Feminino" style="background-color:#f9f9f9;color:black;"/>
										</form:select>
										<br/><form:errors path="sexo" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form" >Data Nascimento</h6>
										<form:input id="dtnasc" path="dtnasc" style="width:250px;" />
										<br/><form:errors path="dtnasc" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-12" >
									<div class="container">
										<p>
										<h6 class="form" >Nome</h6>
										<form:input path="nome" style="width:900px;" maxlength="100"/>
										<br/><form:errors path="nome" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-6" >
									<div class="container">
										<p>
										<h6 class="form" >Celular</h6>
										<form:input id="celular" path="celular" style="width:415px;" />
										</p>
									</div>
								</div>
								<div class="col-md-6" >
									<div class="container">
										<p>
										<h6 class="form" >Telefone</h6>
										<form:input id="telefone" path="telefone" style="width:415px;" />
										<br/><form:errors path="telefone" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="margin-top-60 section-lasttest-blog full">
							<div class="container">
								<div class="section-title text-center">
									<h3>ENDEREÇO</h3>
									<span class="sub-title">Informe seu endereço de entrega</span>
								</div>

								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form">CEP</h6>
										<form:input id="cep" path="cep" style="width:250px;" onblur="preencheCep()"/>
										<br/><form:errors path="cep" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form">Estado</h6>
										<form:input path="estado" style="width:250px;" maxlength="100" />
										<br/><form:errors path="estado" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form">Cidade</h6>
										<form:input path="cidade" style="width:250px;" maxlength="100" />
										<br/><form:errors path="cidade" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-12" >
									<div class="container">
										<p>
										<h6 class="form">Endereço</h6>
										<form:input path="endereco" style="width:900px;" maxlength="255"/>
										<br/><form:errors path="endereco" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-6" >
									<div class="container">
										<p>
										<h6 class="form">Complemento</h6>
										<form:input path="complemento" style="width:415px;" maxlength="100" />
										</p>
									</div>
								</div>
								<div class="col-md-6" >
									<div class="container">
										<p>
										<h6 class="form">Bairro</h6>
										<form:input path="bairro" style="width:415px;" maxlength="100" />
										<br/><form:errors path="bairro" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="margin-top-60 section-lasttest-blog full">
							<div class="container">
								<div class="section-title text-center margin-bottom-30">
									<h3>SUA CONTA</h3>
									<span class="sub-title">Informe seus dados da conta</span>
								</div>
								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form">Email</h6>
										<form:input path="email" style="width:250px;" maxlength="100"/>
										<br/><form:errors path="email" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-4" >
									<div class="container">
										<p>
										<h6 class="form">Senha</h6>
										<form:password path="senha" style="width:250px;"/>
										<br/><form:errors path="senha" cssClass="alert-danger"/>
										</p>
									</div>
								</div>
								<div class="col-md-4" >
									<div class="container center-block">
										<p>
										<div></div><br/>
										<button type="submit" class="button">Cadastrar</button>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="form-checkout">
							<form:errors cssClass="alert-danger" element="div" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>