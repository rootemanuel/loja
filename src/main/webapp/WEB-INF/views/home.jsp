<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<%-- <link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/assets/global/plugins/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/assets/global/plugins/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link
	href="<c:url value="/resources/assets/global/css/components.min.css" />"
	rel="stylesheet" id="style_components" type="text/css" />
<link
	href="<c:url value="/resources/assets/global/css/plugins.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link
	href="<c:url value="/resources/assets/layouts/layout/css/layout.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/assets/layouts/layout/css/themes/darkblue.min.css" />"
	rel="stylesheet" type="text/css" id="style_color" />
<link
	href="<c:url value="/resources/assets/layouts/layout/css/custom.min.css" />"
	rel="stylesheet" type="text/css" /> --%>

<!-- BEGIN CORE PLUGINS -->

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

<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/js.cookie.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.blockui.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
	type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"
	type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script
	src="${pageContext.request.contextPath}/resources/assets/global/scripts/app.min.js"
	type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script
	src="${pageContext.request.contextPath}/resources/assets/pages/scripts/portfolio-2.min.js"
	type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script
	src="${pageContext.request.contextPath}/resources/assets/layouts/layout/scripts/layout.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/layouts/layout/scripts/demo.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/layouts/global/scripts/quick-sidebar.min.js"
	type="text/javascript"></script>
	
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/chosen.jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/functions.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/imagesloaded.pkgd.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/isotope.pkgd.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery.mCustomScrollbar.concat.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/lightbox.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/masonry.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/masonry.pkgd.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/Modernizr.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/assets/loja/js/owl.carousel.min.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teste MONSTRAO</title>
</head>

<body class="home">
<div id="box-mobile-menu" class="box-mobile-menu full-height full-width">
	<div class="box-inner">
		<span class="close-menu"><span class="icon pe-7s-close"></span></span>
	</div>
</div>
<div id="header-ontop" class="is-sticky"></div>
<header id="header" class="header style3">
	<div class="container">
		<div class="main-menu-wapper">
		<div class="row">
			<div class="col-sm-12 col-md-3 logo-wapper">
				<div class="logo">
					<a href="#"><img src="images/logos/1.png" alt=""></a>
				</div>
			</div>
			<div class="col-sm-12 col-md-9 menu-wapper">
				<div class="top-header">
					<span class="mobile-navigation"><i class="fa fa-bars"></i></span>
					<div class="slogan">"Boutique is a reflection of you!"</div>
					<div class="box-control">
						<form  class="box-search">
							<div class="inner">
								<input type="text" class="search" placeholder="Search here...">
								<button class="button-search"><span class="pe-7s-search"></span></button>
							</div>
						</form>
						<div class="mini-cart">
							<a class="cart-link" href="#"><span class="icon pe-7s-cart"></span> <span class="count">3</span> $255.00</a>
							<div class="show-shopping-cart">
                                <h3 class="title">YOU HAVE <span class="text-primary">(3 ITEMS)</span> IN YOUR CART</h3>
                                <ul class="list-product">
                                	<li>
                                		<div class="thumb">
                                			<img src="images/products/1.png" alt="">
                                		</div>
                                		<div class="info">
                                			<h4 class="product-name"><a href="#">LONDON STAR SWEATSHIRT</a></h4>
                                			<span class="price">1x£375.00</span>
                                			<a class="remove-item" href="#"><i class="fa fa-close"></i></a>
                                		</div>
                                	</li>
                                	<li>
                                		<div class="thumb">
                                			<img src="images/products/1.png" alt="">
                                		</div>
                                		<div class="info">
                                			<h4 class="product-name"><a href="#">LONDON STAR SWEATSHIRT</a></h4>
                                			<span class="price">1x£375.00</span>
                                			<a class="remove-item" href="#"><i class="fa fa-close"></i></a>
                                		</div>
                                	</li>
                                </ul>
                                <div class="sub-total">
                                	Subtotal:£255.00
                                </div>
                                <div class="group-button">
                                	<a href="#" class="button">Shopping Cart</a>
                                	<a href="#" class="check-out button">CheckOut</a>
                                </div>
    						</div>
						</div>
						<div class="box-settings">
                            <span class="icon pe-7s-config"></span>
                            <div class="settings-wrapper ">
                                <div class="setting-content">
                                    <sec:authorize access="isAuthenticated()"> 
                                    <div class="select-currency">
                                        <div class="currency-title">Bem Vindo!</div>
                                        <div class="currency-topbar">                                                
                                            <div class="currency-list">
                                                <ul class="clearfix">
                                                    <li><sec:authentication property="principal.username"/></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    </sec:authorize>
                                    <div class="setting-option">
                                        <ul>
                                        	<sec:authorize access="isAnonymous()">
                                        		<li><a href="login"><i class="icon-user icons"></i><span>Login</span></a></li>
                                            </sec:authorize>
                                            <sec:authorize access="isAuthenticated()">
                                            	<li><a href="#"><i class="icon-user icons"></i><span>Minha Conta</span></a></li>
                                            	<li><a href="logout"><i class="icon-lock-open icons"></i><span>Logout</span></a></li>
                                        	</sec:authorize>
                                        </ul>
                                    </div>
                            	</div>
                        	</div>
						</div>
					</div>
				</div>
				<ul class="boutique-nav main-menu clone-main-menu">                                      
					<li class="active menu-item-has-children item-megamenu">
						<a href="index.html">Home</a>
						<div style="width:500px;" class="sub-menu megamenu">
							<div class="row">
								<div class="col-sm-6">
									<div class="mega-custom-menu">
										<ul>
                                            <li><a href="index.html">Home Version 01</a></li>
											<li><a href="index2.html">Home Version 02</a></li>
											<li><a href="index3.html">Home Version 03</a></li>
											<li><a href="index4.html">Home Version 04</a></li>
											<li><a href="index5.html">Home Version 05</a></li>
											<li><a href="index6.html">Home Version 06</a></li>
											<li><a href="index7.html">Home Version 07</a></li>
											<li><a href="index8.html">Home Version 08</a></li>
                                        </ul>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="mega-custom-menu">
										<ul>
                                            <li><a href="index9.html">Home Version 09</a></li>
											<li><a href="index10.html">Home Version 10</a></li>
											<li><a href="index11.html">Home Version 11</a></li>
											<li><a href="index12.html">Home Version 12</a></li>
											<li><a href="index13.html">Home Version 13</a></li>
											<li><a href="index14.html">Home Version 14</a></li>
											<li><a href="index15.html">Home Version 15</a></li>
											<li><a href="index16.html">Home Version 16</a></li>
                                        </ul>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="menu-item-has-children">
                        <a href="#">Pages</a>
                        <span class="arow"></span>
                        <ul class="sub-menu">
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li><a href="cart.html">Cart</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="wishlist.html">wishlist</a></li>
                            <li><a href="lookbook.html">Lookbook</a></li>
                            <li><a href="404.html">404 page</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children item-megamenu">
                        <a href="#">Shop</a>
                        <div style="width:820px; background-image:url('images/bg-megamenu.png'); " class="sub-menu megamenu megamenu-bg" >
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="mega-custom-menu">
                                        <h2 class="title">CATEGORIES</h2>
                                        <ul>
                                            <li><a href="category-left-sidebar.html">Left sidebar</a></li>
                                            <li><a href="category-right-sidebar.html">Right sidebar</a></li><li><a href="category-list.html">Category list</a></li>
                                            <li><a href="category-2columns.html">2 columns</a></li>
                                            <li><a href="category-3columns.html">3 columns</a></li>
                                            <li><a href="category-4columns.html">4 columns</a></li>
                                            <li><a href="category-6columns.html">6 columns</a></li>
                                            <li><a href="category2-leftsidebar.html">Categorie Style 2</a></li>
                                            <li><a href="category3-leftsidebar.html">Categorie Style 3</a></li>
                                            <li><a href="category4-leftsidebar.html">Categorie Style 4</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="mega-custom-menu">
                                        <h2 class="title">PRODUCT</h2>
                                        <ul>
                                            <li><a href="product-1.html">Product Simple</a></li>
                                            <li><a href="product-2.html">Out of Stock</a></li>
                                            <li><a href="product-3.html">Product Fullwidth</a></li>
                                            <li><a href="product-4.html">Product Left Sidebar</a></li>
                                            <li><a href="product-5.html">External/Affiliate product</a></li>
                                            <li><a href="product-6.html">Grouped product</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
					<li class="menu-item-has-children item-megamenu">
						<a href="#">FEATURES</a>
						<div style="width:1500px;" class="sub-menu megamenu">
							<div class="row">
								<div class="col-sm-6">
									<div class="element-icon">
										<div class="icon"><img src="images/icons/icon-custom.png" alt=""></div>
										<div class="content">
											<h4 class="title">EASY CUSTOMIZE</h4>
										<div class="text"><p>Maecenas sit amet lectus vulputate, tristique mi a, lobortis erat. Nunc quis malesuada urna. Ut in blandit diam. Sed diam sem, imperdiet id enim blandit, vehicula blandit libero.</p></div>
										</div>
									</div>
									<div class="element-icon">
										<div class="icon"><img src="images/icons/icon-color.png" alt=""></div>
										<div class="content">
											<h4 class="title">UNLIMITED COLOR</h4>
										<div class="text"><p>Maecenas sit amet lectus vulputate, tristique mi a, lobortis erat. Nunc quis malesuada urna. Ut in blandit diam. Sed diam sem, imperdiet id enim blandit, vehicula blandit libero.</p></div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="element-icon">
										<div class="icon"><img src="images/icons/icon-responsive.png" alt=""></div>
										<div class="content">
											<h4 class="title">RESPONSIVE DESIGN</h4>
										<div class="text"><p>Maecenas sit amet lectus vulputate, tristique mi a, lobortis erat. Nunc quis malesuada urna. Ut in blandit diam. Sed diam sem, imperdiet id enim blandit, vehicula blandit libero.</p></div>
										</div>
									</div>
									<div class="element-icon">
										<div class="icon"><img src="images/icons/icon-document.png" alt=""></div>
										<div class="content">
											<h4 class="title">EASY DOCUMENT</h4>
										<div class="text"><p>Maecenas sit amet lectus vulputate, tristique mi a, lobortis erat. Nunc quis malesuada urna. Ut in blandit diam. Sed diam sem, imperdiet id enim blandit, vehicula blandit libero.</p></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="menu-item-has-children">
						<a href="blogs.html">BLOG</a>
						<ul class="sub-menu">
							<li><a href="blogs.html">Blog List</a></li>
							<li><a href="blogpost.html">Blog Single</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		</div>
	</div>
</header>
<!-- Home slide -->
<div class="home-slide3 owl-carousel nav-style3 nav-center-center" data-animateout="fadeOut" data-animatein="fadeIn" data-items="1" data-nav="true" data-dots="false" data-loop="true" data-autoplay="true">
	<img src="images/slides/8.jpg" alt="">
	<img src="images/slides/27.jpg" alt="">
	<img src="images/slides/28.jpg" alt="">
</div>
<!-- ./Home slide -->
<div class="container">
	<div class="text-border margin-top-30">
		<p>FREE UK DELIVERY + RETURN OVER £85.00 (EXCLUDING HOMEWARE)| FREE UK COLLECT FROM STORE</p>
	</div>
	<div class="margin-top-10">
		<div class="row">
			<div class="col-sm-4 margin-top-30">
				<a class="banner-opacity" href="#"><img src="images/b/8.jpg" alt=""></a>
			</div>
			<div class="col-sm-4 margin-top-30">
				<a class="banner-opacity" href="#"><img src="images/b/9.jpg" alt=""></a>
			</div>
			<div class="col-sm-4 margin-top-30">
				<a class="banner-opacity" href="#"><img src="images/b/10.jpg" alt=""></a>
			</div>
		</div>
	</div>
	<div class="margin-top-50">
		<div class="tab-product">
			<ul class="box-tabs nav-tab tab-owl-fade-effect">
                <li class="active"><a data-animated='fadeInUp' data-toggle="tab" href="#tab-1">Best Sellers</a></li>
                <li><a data-animated='slideInLeft' data-toggle="tab" href="#tab-2">New Arrivals</a></li>
                <li><a data-animated='slideInRight' data-toggle="tab" href="#tab-1">Most Reviews</a></li>
            </ul>
            <div class="tab-content">
            	<div class="tab-container">
            		<div id="tab-1" class="tab-panel active">
            			<ul class="tab-list owl-carousel nav-style7 nav-center-center" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"600":{"items":2},"1000":{"items":4}}'>
            				<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/1.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/2.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
							<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/2.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/3.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
							<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/3.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/4.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
							<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/4.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/5.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
            			</ul>
            		</div>
            		<div id="tab-2" class="tab-panel">
            			<ul class="tab-list owl-carousel nav-style7 nav-center-center" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":4}}'>
            				<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/5.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/6.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
							<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/6.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/7.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
							<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/7.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/8.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
							<li class="product-item">
								<div class="product-inner">
									<div class="product-thumb has-back-image">
										<a href="#"><img src="images/products/8.jpg" alt=""></a>
										<a class="back-image" href="#"><img src="images/products/9.jpg" alt=""></a>
										<div class="gorup-button">
											<a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
											<a href="#" class="compare"><i class="fa fa-exchange"></i></a>
											<a href="#" class="quick-view"><i class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-info">
										<h3 class="product-name"><a href="#">London Star Sweatshirt</a></h3>
										<span class="price">
											<ins>£85.00</ins>
											<del>£95.00</del>
										</span>
										<a href="#" class="button">ADD TO CART</a>
									</div>
								</div>
							</li>
            			</ul>
            		</div>
            	</div>
            </div>
		</div>
	</div>
	<div class="margin-top-60 our-category">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-5">
				<div class="section-title text-center margin-top-40 margin-bottom-30">
					<h3>OUR CATEGORIES</h3>
					<span class="sub-title">Find all items you want by select our featured categories</span>
				</div>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-7">
				<ul class="category-menu category-carousel pull-left owl-carousel nav-style7 nav-center-center" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"600":{"items":4},"1000":{"items":4}}'>
					<li>
						<a href="#">
						<img src="images/categorys/1.png" alt="">
						Clothing
						</a>
					</li>
					<li>
						<a href="#">
						<img src="images/categorys/2.png" alt="">
						Sneakers
						</a>
					</li>
					<li>
						<a href="#">
						<img src="images/categorys/3.png" alt="">
						Accessories
						</a>
					</li>
					<li>
						<a href="#">
						<img src="images/categorys/4.png" alt="">
						Handbags
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="margin-top-60 section-lasttest-blog">
		<div class="section-title text-center"><h3>Our BLog</h3></div>
		<div class="lastest-blog owl-carousel nav-center-center nav-style7" data-nav="true" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":2}}'>
			<div class="item-blog">
				<div class="left">
					<div class="blog-date">
						<span class="day">7</span>
						<span class="month">/SEP</span><br>
						<span class="year">2015</span>
					</div>
					<h3 class="blog-title"><a href="#">We're the best Designers from UK</a></h3>
					<div class="meta">
						<span class="author">John Doe</span>
						<span class="comment"><i class="fa fa-comment"></i> 36 comments</span>
					</div>
				</div>
				<div class="right">
					<a class="banner-border" href="#"><img src="images/blogs/1.jpg" alt=""></a>
				</div>
			</div>
			<div class="item-blog">
				<div class="left">
					<div class="blog-date">
						<span class="day">7</span>
						<span class="month">/SEP</span><br>
						<span class="year">2015</span>
					</div>
					<h3 class="blog-title"><a href="#">We're the best Designers from UK</a></h3>
					<div class="meta">
						<span class="author">John Doe</span>
						<span class="comment"><i class="fa fa-comment"></i> 36 comments</span>
					</div>
				</div>
				<div class="right">
					<a class="banner-border" href="#"><img src="images/blogs/2.jpg" alt=""></a>
				</div>
			</div>
			<div class="item-blog">
				<div class="left">
					<div class="blog-date">
						<span class="day">7</span>
						<span class="month">/SEP</span><br>
						<span class="year">2015</span>
					</div>
					<h3 class="blog-title"><a href="#">We're the best Designers from UK</a></h3>
					<div class="meta">
						<span class="author">John Doe</span>
						<span class="comment"><i class="fa fa-comment"></i> 36 comments</span>
					</div>
				</div>
				<div class="right">
					<a class="banner-border" href="#"><img src="images/blogs/1.jpg" alt=""></a>
				</div>
			</div>
		</div>
	</div>

	<div class="section-brand-slide">
		<div class="brands-slide owl-carousel nav-center-center nav-style7" data-nav="true" data-dots="false" data-loop="true" data-margin="60" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":5}}'>
			<a href="#"><img src="images/brands/brand1.png" alt=""></a>
			<a href="#"><img src="images/brands/brand2.png" alt=""></a>
			<a href="#"><img src="images/brands/brand3.png" alt=""></a>
			<a href="#"><img src="images/brands/brand4.png" alt=""></a>
			<a href="#"><img src="images/brands/brand5.png" alt=""></a>
		</div>
	</div>
	<div class="margin-top-60">
		<div class="row">
			<div class="col-sm-12 col-md-7">
				<div class="video video-lightbox">
					<img src="images/bg_video.png" alt="">
					<div class="overlay"></div>
					<a href="#"  class="link-lightbox button-play" data-videoid="134060140" data-videosite="vimeo"></a>
				</div>
			</div>
			<div class="col-sm-12 col-md-5">
				<div class="newsletter">
                    <div class="section-title text-center"><h3>NEWSLETTER</h3></div>
                    <i class="newsletter-info">Sign up for Our Newsletter &amp; Promotions</i>
                    <form class="form-newsletter">
                      <input type="text" name="newsletter" placeholder="Your email address here..." value="">
                      <span><button class="newsletter-submit" type="submit">SIGNUP</button></span>
                    </form>
                </div>
			</div>
		</div>
	</div>
	<div class="margin-top-60 margin-bottom-30">
		<div class="row">
			<div class="col-sm-12 col-md-4">
                <div class="element-icon style2">
					<div class="icon"><i class="flaticon flaticon-origami28"></i></div>
					<div class="content">
						<h4 class="title">FREE SHIPPING WORLD WIDE</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4">
                <div class="element-icon style2">
					<div class="icon"><i class="flaticon flaticon-curvearrows9"></i></div>
					<div class="content">
						<h4 class="title">MONEY BACK GUARANTEE</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4">
                <div class="element-icon style2">
					<div class="icon"><i class="flaticon flaticon-headphones54"></i></div>
					<div class="content">
						<h4 class="title">ONLINE SUPPORT 24/7</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>