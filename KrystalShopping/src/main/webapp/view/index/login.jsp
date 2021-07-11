<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<!-- Mirrored from kute-themes.com/html/krystal/html/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 May 2021 05:19:15 GMT -->

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="/css/animate.css">
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="/css/pe-icon-7-stroke.css">
<link rel="stylesheet" type="text/css" href="/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/css/chosen.css">
<link rel="stylesheet" type="text/css" href="/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- -------------------------------------------------------------- -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body class="page-inner">
    <div id="snackbar">Register Successful!</div>
	<div class="wrapper">
		<form id="block-search-mobile" method="get"
			class="block-search-mobile">
			<div class="form-content">
				<div class="control">
					<a href="#" class="close-block-serach"><span
						class="icon fa fa-times"></span></a> <input type="text" name="search"
						placeholder="Search" class="input-subscribe">
					<button type="submit" class="btn search">
						<span><i class="fa fa-search" aria-hidden="true"></i></span>
					</button>
				</div>
			</div>
		</form>
		<!-- HEADER -->
		<header class="site-header header-opt-1">
			<!-- header-top -->
			<div class="header-top">
				<div class="container">
					<!-- hotline -->
					<ul class="nav-top-left">
						<li><a href="#">Welcome to KryStal - Always free delivery</a></li>
					</ul>
					<!-- hotline -->
					<!-- heder links -->
					<ul class="nav-top-right krystal-nav">
						<li><a href="#">Newsletter</a></li>
						<li class="menu-item-has-children"><a href="#"
							class="dropdown-toggle"> <img src="/images/home1/l1.jpg"
								alt="flag">English<i class="fa fa-angle-down"
								aria-hidden="true"></i>
						</a>
							<ul class="submenu parent-megamenu">
								<li class="switcher-option"><a href="#" class="flag"><img
										src="/images/home1/l1.jpg" alt="flag">English</a></li>
								<li class="switcher-option"><a href="#" class="flag"><img
										src="/images/home1/l2.jpg" alt="flag">Hungary</a></li>
								<li class="switcher-option"><a href="#" class="flag"><img
										src="/images/home1/l3.jpg" alt="flag">German</a></li>
								<li class="switcher-option"><a href="#" class="flag"><img
										src="/images/home1/l4.jpg" alt="flag">French</a></li>
								<li class="switcher-option"><a href="#" class="flag"><img
										src="/images/home1/l5.jpg" alt="flag">Canada</a></li>
							</ul></li>
						<li class="menu-item-has-children"><a href="#"
							class="dropdown-toggle"> <span>Dollar (US)</span><i
								class="fa fa-angle-down" aria-hidden="true"></i>
						</a>
							<ul class="submenu parent-megamenu">
								<li class="switcher-option"><a href="#"
									class="switcher-flag icon">Pound (GBP)</a></li>
								<li class="switcher-option"><a href="#"
									class="switcher-flag icon">Euro (EUR)</a></li>
								<li class="switcher-option"><a href="#"
									class="switcher-flag icon">Dollar (USD)</a></li>
							</ul></li>
						<li>
							<form action="/index/login" method="get"
								enctype="multipart/form-data">
								<c:if test="${sessionScope.username == null}">
									<a href="/index/login"><i class="fa fa-user"
										aria-hidden="true"></i>Register / Sign in </a>
								</c:if>

								<c:if test="${sessionScope.username != null}">
									<li class="menu-item-has-children" style="list-style-type: none;"><a href="/index/login"
										class="dropdown-toggle"><i class="fa fa-user"
											aria-hidden="true"></i>${sessionScope.username} </a>
										<ul class="submenu parent-megamenu">
											<li class="switcher-option"><a href="/index/login">Profice</a></li>
											
											<li class="switcher-option"><a href="/index/logout" >Log out</a></li>
										</ul></li>
								</c:if>
							</form>
						</li>
					</ul>
					<!-- heder links -->
				</div>
			</div>
			<!-- header-top -->
			<!-- header-content -->
			<div class="header-content">
				<div class="container">
					<div class="row">
						<div class="col-md-2 nav-left">
							<!-- logo -->
							<strong class="logo"> <a href="/index/home"><img
									src="/images/home1/logo.jpg" alt="logo"></a>
							</strong>
							<!-- logo -->
						</div>
						<div class="col-md-8 nav-mind">
							<!-- block search -->
							<div class="block-search">
								<div class="block-content">
									<div class="categori-search  ">
										<select data-placeholder="All Categories"
											class="chosen-select categori-search-option">
											<option value="">All Categories</option>
											<optgroup label="- Electronics">
												<option>Batteries & Chargens</option>
												<option>Headphone & Headsets</option>
												<option>Mp3 Player & Acessories</option>
											</optgroup>
											<optgroup label="- Smartphone & Table">
												<option>Batteries & Chargens</option>
												<option>Headphone & Headsets</option>
												<option>Mp3 Player & Acessories</option>
											</optgroup>
											<optgroup label="- Electronics">
												<option>Batteries & Chargens</option>
												<option>Headphone & Headsets</option>
												<option>Mp3 Player & Acessories</option>
											</optgroup>
											<optgroup label="- Smartphone & Table">
												<option>Batteries & Chargens</option>
												<option>Headphone & Headsets</option>
												<option>Mp3 Player & Acessories</option>
											</optgroup>
										</select>
									</div>
									<div class="form-search">
										<form>
											<div class="box-group">
												<input type="text" class="form-control"
													placeholder="Searh entire store here...">
												<button class="btn btn-search" type="button">
													<span>search</span>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- block search -->
						</div>

						<!-- CartShow -->
						<div class="col-md-2 nav-right">
							<!-- block mini cart -->
							<div class="block-minicart dropdown">

								<a class="minicart" href="#"> <span class="counter qty">
										<span class="cart-icon"><i class="fa fa-shopping-bag"
											aria-hidden="true"></i></span> <span class="counter-number">${SumItem}</span>
								</span> <span class="counter-your-cart"> <span
										class="counter-label">Your Cart:</span> <span
										class="counter-price">${total}</span>
								</span>
								</a>
								<div class="parent-megamenu">
									<div class="minicart-content-wrapper">
										<div class="subtitle">
											You have <strong>${SumItem}</strong> item(s) in your cart
										</div>
										<div class="minicart-items-wrapper">
											<c:forEach var="item" items="${cart_items}">
												<!-- Items Show Cart -->
												<ol class="minicart-items"
													style="list-style-type: none !important">
													<!-- Item Cart -->
													<li class="product">
														<div class="product-thumb style1 col-sm-4">
															<a href="#"><img src="/images/All/${item.image}.jpg"
																alt="f2"></a>
														</div>
														<div class="product-innfo col-sm-7">
															<div class="product-name">
																<a href="#">${item.name}</a>
															</div>
															<div class="product-qty">
																<a href="#">Quantity: ${item.quantity}</a>
															</div>
															<a href="/shopping-cart/remove/${item.productID}"
																class="remove"><i class="fa fa-times"
																aria-hidden="true"></i></a> <span class="price price-dark">
																<ins>$${item.saprice}</ins>
															</span>
														</div>
													</li>
													<!-- Item Cart -->
												</ol>
											</c:forEach>
											<!-- Items Show Cart -->
										</div>
										<div class="subtotal">
											<span class="label">Total :</span> <span class="price">$${total}</span>
										</div>
										<div class="actions">
											<a class="btn btn-viewcart" href="/shopping-cart/cart"
												style="width: 100%; text-align: center;">View cart</a>
										</div>
									</div>
								</div>
							</div>
							<!-- block mini cart -->
							<a href="#" class="hidden-md search-hidden"><span
								class="pe-7s-search"></span></a> <a class="wishlist-minicart"
								href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
						</div>
						<!-- CartShow -->
					</div>
				</div>
			</div>
			<!-- header-content -->
			<!-- header-menu-bar -->
			<div class="header-menu-bar header-sticky">
				<div class="header-menu-nav menu-style-2">
					<div class="container">
						<div class="header-menu-nav-inner">
							<div id="box-vertical-megamenus"
								class="box-vertical-megamenus nav-toggle-cat">
								<h4 class="title active">
									<span class="btn-open-mobile home-page"> <span></span> <span></span>
										<span></span>
									</span> <span class="title-menu">All Departments</span>
								</h4>
								<div class="vertical-menu-content">
									<span class="btn-close hidden-md"><i class="fa fa-times"
										aria-hidden="true"></i></span>
									<ul class="vertical-menu-list">
										<li><a href="#">Fashion Menâs</a></li>
										<li class="menu-item-has-children arrow item-megamenu"><a
											href="#" class="dropdown-toggle">Fashion Womenâs</a> <span
											class="toggle-submenu hidden-md"></span>
											<div class="submenu parent-megamenu megamenu">
												<div class="row">
													<div class="submenu-banner submenu-banner-menu-1">
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Fashion WoMenâs</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Leather
																				Jackets</a></li>
																		<li class="menu-item"><a href="#">Handbags</a></li>
																		<li class="menu-item"><a href="#">Shoes</a></li>
																		<li class="menu-item"><a href="#">Jewelrys</a></li>
																		<li class="menu-item"><a href="#">Clothings</a></li>
																		<li class="menu-item"><a href="#">Macbook Air</a></li>
																		<li class="menu-item"><a href="#">Laptop Pro</a></li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Accessories</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Hair
																				Accessories</a></li>
																		<li class="menu-item"><a href="#">Bloves &
																				Mittens</a></li>
																		<li class="menu-item"><a href="#">Hats</a></li>
																		<li class="menu-item"><a href="#">Tech
																				Accessories</a></li>
																		<li class="menu-item"><a href="#">Head Set</a></li>
																		<li class="menu-item"><a href="#">Software</a></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div></li>
										<li class="menu-item-has-children arrow item-megamenu"><a
											href="#" class="dropdown-toggle">Hand Bags</a> <span
											class="toggle-submenu hidden-md"></span>
											<div class="submenu parent-megamenu megamenu">
												<div class="row">
													<div class="submenu-banner submenu-banner-menu-1">
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Fashion WoMenâs</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Leather
																				Jackets</a></li>
																		<li class="menu-item"><a href="#">Handbags</a></li>
																		<li class="menu-item"><a href="#">Shoes</a></li>
																		<li class="menu-item"><a href="#">Jewelrys</a></li>
																		<li class="menu-item"><a href="#">Clothings</a></li>
																		<li class="menu-item"><a href="#">Macbook Air</a></li>
																		<li class="menu-item"><a href="#">Laptop Pro</a></li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Accessories</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Hair
																				Accessories</a></li>
																		<li class="menu-item"><a href="#">Bloves &
																				Mittens</a></li>
																		<li class="menu-item"><a href="#">Hats</a></li>
																		<li class="menu-item"><a href="#">Tech
																				Accessories</a></li>
																		<li class="menu-item"><a href="#">Head Set</a></li>
																		<li class="menu-item"><a href="#">Software</a></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div></li>
										<li><a href="#">Accessories</a></li>
										<li><a href="#">Shoes</a></li>
										<li class="menu-item-has-children arrow item-megamenu"><a
											href="#" class="dropdown-toggle">Laptop & Computers</a> <span
											class="toggle-submenu hidden-md"></span>
											<div class="submenu parent-megamenu megamenu">
												<div class="row">
													<div class="submenu-banner submenu-banner-menu-1">
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Laptop & computers</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Laptops,
																				Desktops & Monitors</a></li>
																		<li class="menu-item"><a href="#">Printers &
																				Ink</a></li>
																		<li class="menu-item"><a href="#">Computer
																				Accessories</a></li>
																		<li class="menu-item"><a href="#">Software</a></li>
																		<li class="menu-item"><a href="#">Macbook</a></li>
																		<li class="menu-item"><a href="#">Macbook Air</a></li>
																		<li class="menu-item"><a href="#">Laptop Pro</a></li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Accessories</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Accessories</a></li>
																		<li class="menu-item"><a href="#">Phone
																				Batteries</a></li>
																		<li class="menu-item"><a href="#">Phone
																				Charger</a></li>
																		<li class="menu-item"><a href="#">Phone
																				Screen</a></li>
																		<li class="menu-item"><a href="#">Head Set</a></li>
																		<li class="menu-item"><a href="#">Software</a></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div></li>
										<li><a href="#">Game & Consoles</a></li>
										<li><a href="#">Headphone</a></li>
										<li><a href="#">Video Games & Consoles</a></li>
										<li><a href="#">Car Electronic & GDP</a></li>
										<li><a href="#">Virtual Reality</a></li>
									</ul>
								</div>
							</div>

							<div class="header-menu header-menu-resize">

								<ul class="header-nav krystal-nav">
									<li class="btn-close hidden-md"><i class="fa fa-times"
										aria-hidden="true"></i></li>
									<li class="menu-item-has-children arrow"><a
										href="/index/home" class="dropdown-toggle">Home</a></li>
									<!--ĐIỆN THOẠI-->
									<li
										class="menu-item-has-children arrow item-megamenu item-megamenu-sub">
										<a href="/index/list" class="dropdown-toggle">ĐIỆN THOẠI</a> <span
										class="toggle-submenu hidden-md"></span>
										<div class="submenu parent-megamenu megamenu">
											<div class="row">
												<div class="submenu-banner submenu-banner-menu-1">
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">HÃNG SẢN XUẤT</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">Apple
																			(iPhone)</a></li>
																	<li class="menu-item"><a href="#">Samsung</a></li>
																	<li class="menu-item"><a href="#">Xiaomi</a></li>
																	<li class="menu-item"><a href="#">Vivo</a></li>
																	<li class="menu-item"><a href="#">Vsmart</a></li>
																	<li class="menu-item"><a href="#">Oppo</a></li>
																	<li class="menu-item"><a href="#">Realme</a></li>
																	<li class="menu-item"><a href="#">Huawei</a></li>
																	<li class="menu-item"><a href="#">Masstel</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">ĐỒNG HỒ THÔNG MINH</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">Apple Watch</a>
																	</li>
																	<li class="menu-item"><a href="#">Samsung</a></li>
																	<li class="menu-item"><a href="#">Oppo</a></li>
																	<li class="menu-item"><a href="#">Masstel</a></li>
																	<li class="menu-item"><a href="#">Xiaomi</a></li>
																	<li class="menu-item"><a href="#">Garmin</a></li>
																	<li class="menu-item"><a href="#">Huawei</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">MỨC GIÁ</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">Dưới 2 triệu</a>
																	</li>
																	<li class="menu-item"><a href="#">Từ 2 - 4
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Từ 4 - 7
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Từ 7 - 13
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Trên 13
																			triệu</a></li>
																</ul>

															</div>
														</div>
													</div>
													<div class="col-md-4">
														<a href="#" class="promotion-banner item-1 style-3"><img
															src="/images/galaxy-a-khuyen-mai.jpg"
															style="height: 60%; width: 60%;" alt="banner3"></a>
													</div>
												</div>
											</div>
										</div>
									</li>
									<!-- APPLE-->
									<li
										class="menu-item-has-children arrow item-megamenu item-megamenu-sub">
										<a href="#" class="dropdown-toggle">APPLE</a> <span
										class="toggle-submenu hidden-md"></span>
										<div class="submenu parent-megamenu megamenu">
											<div class="row">
												<div class="submenu-banner submenu-banner-menu-1">
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">Các sản phẩm Apple</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">iPhone</a></li>
																	<li class="menu-item"><a href="#">iPad</a></li>
																	<li class="menu-item"><a href="#">Macbook</a></li>
																	<li class="menu-item"><a href="#">Apple Watch</a>
																	</li>
																	<li class="menu-item"><a href="#">Apple Tai
																			nghe</a></li>
																	<li class="menu-item"><a href="#">iMac</a>
																	<li class="menu-item"><a href="#">Mac Mini</a></li>
																	<li class="menu-item"><a href="#">Sạc & Cáp</a></li>
																	<li class="menu-item"><a href="#">Ốp lưng &
																			Bao da</a></li>
																	<li class="menu-item"><a href="#">Apple TV</a></li>
																	<li class="menu-item"><a href="#">Chuột &
																			Trackpad</a></li>
																	<li class="menu-item"><a href="#">Bàn phím</a></li>
																	<li class="menu-item"><a href="#">Airtag</a></li>
																	<li class="menu-item"><a href="#">Hàng dự án</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title"
																style="text-align: center;">Đang Bán Chạy</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<div class="col-md-4">
																		<a class="promotion-banner item-1 style-3" href="#">
																			<img
																			src="https:///images.fpt.shop/unsafe/fit-in/192x192/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/10/26/637393169370871358_ip-11-dd.png"
																			alt="iPhone 11 64GB">
																		</a>
																		<div>
																			<ul class="menu">
																				<li class="menu-item"><a href="#">iPhone 11
																						64GB | 16.390.000 ₫</a></li>
																			</ul>
																		</div>
																	</div>
																	<div class="col-md-4">
																		<a class="promotion-banner item-1 style-3" href="#">
																			<img
																			src="https:///images.fpt.shop/unsafe/fit-in/192x192/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/4/22/637546879521249423_ip-12-dd-a2.jpg"
																			alt="iPhone 12 64GB">
																		</a>
																		<div>
																			<ul class="menu">
																				<li class="menu-item"><a href="#">iPhone 12
																						64GB | 19.990.000 ₫</a></li>
																			</ul>
																		</div>
																	</div>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4" style="padding-left: 80px;">
														<div class="dropdown-menu-info"
															style="text-align: center;">
															<h6 class="dropdown-menu-title"
																style="padding-left: 30px; width: 200px;">Đang Giảm
																Giá</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<div class="col-md-4">
																		<a class="promotion-banner item-1 style-3" href="#">
																			<img
																			src="https:///images.fpt.shop/unsafe/fit-in/192x192/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/10/26/637393169370871358_ip-11-dd.png"
																			alt="iPhone 11 128GB">
																		</a>
																		<div>
																			<ul class="menu">
																				<li class="menu-item"><a href="#">iPhone 11
																						128GB | <strike>26.390.000 ₫</strike> 21.390.000 ₫
																				</a></li>
																			</ul>
																		</div>
																	</div>
																	<div class="col-md-4">
																		<a class="promotion-banner item-1 style-3" href="#">
																			<img
																			src="https:///images.fpt.shop/unsafe/fit-in/192x192/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/4/22/637546879521249423_ip-12-dd-a2.jpg"
																			alt="iPhone 12 128GB">
																		</a>
																		<div>
																			<ul class="menu">
																				<li class="menu-item"><a href="#">iPhone 12
																						128GB | <strike>31.990.000 ₫</strike> 29.990.000 ₫
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<!-- PHỤ KIỆN-->
									<li
										class="menu-item-has-children arrow item-megamenu item-megamenu-sub">
										<a href="#" class="dropdown-toggle">PHỤ KIỆN</a> <span
										class="toggle-submenu hidden-md"></span>
										<div class="submenu parent-megamenu megamenu">
											<div class="row">
												<div class="submenu-banner submenu-banner-menu-1">
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">CÁC SẢN PHẨM PHỤ
																KIỆN</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">Bao da ốp
																			lưng</a></li>
																	<li class="menu-item"><a href="#">Sạc dự phòng</a></li>
																	<li class="menu-item"><a href="#">Thẻ nhớ</a></li>
																	<li class="menu-item"><a href="#">Phụ kiện
																			Apple</a></li>
																	<li class="menu-item"><a href="#">Miếng dán
																			màn hình</a></li>
																	<li class="menu-item"><a href="#">Balo - Túi
																			xách</a></li>
																	<li class="menu-item"><a href="#">TV BOX</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">Tai nghe</a></li>
																	<li class="menu-item"><a href="#">Loa</a></li>
																	<li class="menu-item"><a href="#">USB - Ổ cứng</a></li>
																	<li class="menu-item"><a href="#">Sạc cáp</a></li>
																	<li class="menu-item"><a href="#">Chuột</a></li>
																	<li class="menu-item"><a href="#">Phụ kiện
																			khác</a></li>
																	<li class="menu-item"><a href="#">Bàn phím</a></li>
																	<li class="menu-item"><a href="#">Phụ kiện cũ</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-6" style="padding-top: 10px;">
														<a href="#" class="promotion-banner item-1 style-3"><img
															src="/images/phu-kien-may-tinh2.jpg"
															style="width: 80%; height: 80%" alt="banner3"></a>
													</div>
												</div>
											</div>
										</div>
									</li>
									<!-- CÁC CHỨC NĂNG KHÁC-->
									<li class="menu-item-has-children arrow"><a href="#"
										class="dropdown-toggle">Sub Menu</a> <span
										class="toggle-submenu hidden-md"></span>
										<ul class="submenu parent-megamenu">
											<li class="menu-item"><a href="checkout.html">Checkout</a>
											</li>
											<li class="menu-item"><a href="shopping-cart.html">Shopping
													Cart</a></li>
											<li class="menu-item"><a href="contact-us.html">Contact
													Us</a></li>
											<li class="menu-item"><a href="login.html">Login</a></li>
										</ul></li>
									<li><a href="contact-us.html" class="dropdown-toggle">Contact
											Us</a> <span class="toggle-submenu hidden-md"></span></li>
									<li class="menu-item-has-children arrow"><a href="#"
										class="dropdown-toggle">Blog</a> <span
										class="toggle-submenu hidden-md"></span>
										<ul class="submenu parent-megamenu">
											<li class="menu-item"><a href="blog-grid.html">Blog
													Grid</a></li>
											<li class="menu-item"><a href="blog-list.html">Blog
													List</a></li>
											<li class="menu-item"><a href="blog-single.html">Blog
													Single</a></li>
										</ul></li>
								</ul>
							</div>
							<span data-action="toggle-nav" class="menu-on-mobile hidden-md">
								<span class="btn-open-mobile home-page"> <span></span> <span></span>
									<span></span>
							</span> <span class="title-menu-mobile">Main menu</span>
							</span>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- end HEADER -->
		<!-- MAIN -->
		<main class="site-main site-login">
			<div class="container">
				<ol class="breadcrumb-page">
					<li><a href="#">Home </a></li>
					<li class="active"><a href="#">Login</a></li>
				</ol>
			</div>
			<!-- 1. nhớ thêm dòng này enctype="multipart/form-data"  -->
			<div class="customer-login">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<h5 class="title-login">Log in to your account</h5>
							<p class="p-title-login">Wellcome to your account.</p>
							<form action="/index/login" method="post" enctype="multipart/form-data">
								<p class="form-row form-row-wide">
									<label>Username or Email Address:<span class="required"></span></label>
									<input type="text" value="" name="username"
										placeholder="Type your username or email address"
										class="input-text">
								</p>
								<p class="form-row form-row-wide">
									<label>Password:<span class="required"></span></label> 
									<input id="pswrd" onclick="show()" type="password" name="password" placeholder="************" class="input-text">
								</p>
								<p style="color: red;">${erorr}</p>
								<label class="inline"><input type="checkbox"
									name="remember" value="true"><span class="input"></span>Remember
									me</label> <a href="#" onclick="myFunction()" class="forgot-password">Forgotten password?</a>
								<p class="form-row">
									<input type="submit" value="Login" name="Login"class="button-submit">
									<a href="/index/register" class="forgot-password">Register</a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</main>
		<!-- end MAIN -->
		<!-- FOOTER -->
		<footer class="site-footer footer-opt-2">
			<div class="footer-top full-width">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="newsletter-title">
								<h3 class="h3-newsletter">Sign up to Newsletter</h3>
								<span class="span-newsletter">Recevie $50 Coupon for fist
									Shopping.</span>
							</div>
						</div>
						<div class="col-md-6">
							<div class="newsletter-form">
								<form id="newsletter-validate-detail" class="form subscribe">
									<div class="control">
										<input type="email" placeholder="Enter your email address"
											id="newsletter" name="email" class="input-subscribe">
										<button type="submit" title="Subscribe" class="btn subscribe">
											<span>Sign Up</span>
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-column equal-container">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-6 equal-elem">
							<h3 class="title-of-section">About Us</h3>
							<div class="contacts">
								<p class="contacts-info">Nullam tristique tortor nibh, in
									viverra libero sollicitudin ac. Suspendisse quis lacinia ipsum.
									Etiam scelerisque sit amet lectus quis lacinia. Sed condimentum
									auctor.</p>
								<span class="contacts-info info-address ">05 Street No. 8, Binh Hung Hoa A Ward, Binh Tan District, City. Ho Chi Minh</span> <span
									class="contacts-info info-phone">(+84) 96-323-0016</span> <span
									class="contacts-info info-support">diemphuoc5555@gmail.com</span>
								<div class="socials">
									<a href="#" class="social"><i class="fa fa-twitter"
										aria-hidden="true"></i></a> <a href="#" class="social"><i
										class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"
										class="social"><i class="fa fa-pinterest"
										aria-hidden="true"></i></a> <a href="#" class="social"><i
										class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"
										class="social"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
									<a href="#" class="social"><i class="fa fa-youtube"
										aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
						<div class="col-md-2 col-sm-6 equal-elem">
							<div class="links">
								<h3 class="title-of-section">My account</h3>
								<ul>
									<li><a href="#">Sign In</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">My Wishlist</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="#">Contact us</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-2 col-sm-6 equal-elem">
							<div class="links">
								<h3 class="title-of-section">Information</h3>
								<ul>
									<li><a href="#">Specials</a></li>
									<li><a href="#">New products</a></li>
									<li><a href="#">Best sellers</a></li>
									<li><a href="#">Our stores</a></li>
									<li><a href="#">Contact us</a></li>
									<li><a href="#">Sitemap</a></li>
									<li><a href="#">Blog</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 equal-elem">
							<div class="links links-ins">
								<h3 class="title-of-section">Instagram</h3>
								<div class="content-ins">
									<a href="#"><img src="/images/detail/ins1.jpg" alt="ins1"></a>
									<a href="#"><img src="/images/detail/ins2.jpg" alt="ins2"></a>
									<a href="#"><img src="/images/detail/ins3.jpg" alt="ins3"></a>
									<a href="#"><img src="/images/detail/ins4.jpg" alt="ins4"></a>
									<a href="#"><img src="/images/detail/ins5.jpg" alt="ins5"></a>
									<a href="#"><img src="/images/detail/ins6.jpg" alt="ins6"></a>
									<a href="#"><img src="/images/detail/ins7.jpg" alt="ins7"></a>
									<a href="#"><img src="/images/detail/ins8.jpg" alt="ins8"></a>
									<a href="#"><img src="/images/detail/ins9.jpg" alt="ins9"></a>
									<a href="#"><img src="/images/detail/ins10.jpg" alt="ins10"></a>
								</div>
								<a href="#" class="view-more">View More <!-- <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> -->
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright full-width">
				<div class="container">
					<div class="copyright-right">
						© Copyright 2017<span> Krystal</span>. All Rights Reserved.
					</div>
					<div class="pay-men">
						<a href="#"><img src="/images/home1/pay1.jpg" alt="pay1"></a>
						<a href="#"><img src="/images/home1/pay2.jpg" alt="pay2"></a>
						<a href="#"><img src="/images/home1/pay3.jpg" alt="pay3"></a>
						<a href="#"><img src="/images/home1/pay4.jpg" alt="pay4"></a>
					</div>
				</div>
			</div>
		</footer>
		<!-- end FOOTER -->

		<!--back-to-top  -->
		<!-- <a href="#" class="back-to-top">
            <i aria-hidden="true" class="fa fa-angle-up"></i>
        </a> -->

	</div>
	<a href="#" id="scrollup" title="Scroll to Top">Scroll</a>
	<!-- jQuery -->
	<script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="/js/wow.min.js"></script>
	<script type="text/javascript" src="/js/jquery.actual.min.js"></script>
	<script type="text/javascript" src="/js/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="/js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="/js/jquery.sticky.js"></script>
	<script type="text/javascript" src="/js/jquery.elevateZoom.min.js"></script>

	<script src="/js/fancybox/source/jquery.fancybox.pack.js"></script>
	<script src="/js/fancybox/source/helpers/jquery.fancybox-media.js"></script>
	<script src="/js/fancybox/source/helpers/jquery.fancybox-thumbs.js"></script>
	<script type="text/javascript" src="/js/function.min.js"></script>
	<script type="text/javascript" src="/js/Modernizr.js"></script>
	<script type="text/javascript" src="/js/jquery.plugin.js"></script>
	<script type="text/javascript" src="/js/jquery.countdown.js"></script>
	<script type="text/javascript" src="../../../../kutethemes.com/index.html"></script>

	<script>
	function myFunction() {
	    var x = document.getElementById("snackbar")
	    x.className = "show";
	    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
	}
	</script>
	
	<script>
         function show(){
          var pswrd = document.getElementById('pswrd');
          if (pswrd.type === "password") {
           pswrd.type = "text";
           pswrd.style.marginTop = "0px";
          }else{
           pswrd.type = "password";
          }
         }
      </script>
</body>

<!-- Mirrored from kute-themes.com/html/krystal/html/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 May 2021 05:19:16 GMT -->

</html>