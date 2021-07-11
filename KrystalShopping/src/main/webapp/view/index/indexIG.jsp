<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Welcome to KryStal - Always free delivery</title>
<link rel="stylesheet" type="text/css" href="/css/animate.css">
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="/css/pe-icon-7-stroke.css">
<link rel="stylesheet" type="text/css" href="/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/css/chosen.css">
<link rel="stylesheet" type="text/css" href="/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body class="index-opt-5">
	<div id="snackbar">Login Successful!</div>
	<c:if test="${sessionScope.username == null}">
		<div class="login-popup">
			<div class="box">
				<div class="img-area">
					<div class="img">
						<img alt="" src="/images/home5/imgContent.jpg">
					</div>
					<h1>Welcome to KryStal.</h1>
				</div>
				<div class="form">
					<div class="close">&times;</div>
					<h1>Log In</h1>
					<form action="/index/home" method="post"
						enctype="multipart/form-data">
						<div class="form-group">
							<input name="username" type="text"
								placeholder="Username or Email Address" class="form-control">
						</div>
						<div class="form-group">
							<input name="password" type="password" placeholder="Password"
								class="form-control">
						</div>
						<p style="color: red;">${erorr}</p>
						<div class="form-group">
							<label class="inline"><input type="checkbox"
								name="remember" value="true"> <span class="input"></span>Remember
								me</label>
						</div>
						<button type="submit" value="Login" name="Login" class="btn">Log
							In</button>
					</form>
				</div>
			</div>
		</div>
	</c:if>
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
									<li class="menu-item-has-children"
										style="list-style-type: none;"><a href="/index/login"
										class="dropdown-toggle"><i class="fa fa-user"
											aria-hidden="true" onmousemove="myFunction()"></i>${sessionScope.username}
									</a>
										<ul class="submenu parent-megamenu">
											<li class="switcher-option"><a href="/index/login">Profice</a></li>

											<li class="switcher-option"><a href="/index/logout">Log
													out</a></li>
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
											<!--<c:forEach var="p" items="">
                                            <optgroup label="">
                                                <option>Batteries & Chargens</option>
                                                <option>Headphone & Headsets</option>
                                                <option>Mp3 Player & Acessories</option>
                                            </optgroup>
                                            </c:forEach>-->
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
										</select> </select>
									</div>
									<div class="form-search">
										<form action="/index/search-list" method="post">
											<div class="box-group">
												<input name="keywords" value="${keywords}" type="text"
													class="form-control"
													placeholder="Searh entire store here...">
												<button class="btn btn-search">
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
			<div class="header-menu-bar header-menu-opt-5 header-sticky">
				<div class="header-menu-nav menu-style-3">
					<div class="container">
						<div class="header-menu-nav-inner header-menu-resize">
							<div class="header-menu ">
								<ul class="header-nav krystal-nav">
									<li class="btn-close hidden-md"><i class="fa fa-times"
										aria-hidden="true"></i></li>
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
															style="height: 100%; width: 100%;" alt="banner3"></a>
													</div>
												</div>
											</div>
										</div>
									</li>
									<!-- LAPTOP-->
									<li
										class="menu-item-has-children arrow item-megamenu item-megamenu-sub">
										<a href="#" class="dropdown-toggle">LAPTOP</a> <span
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
																			(Macbook)</a></li>
																	<li class="menu-item"><a href="#">Asus</a></li>
																	<li class="menu-item"><a href="#">Dell</a></li>
																	<li class="menu-item"><a href="#">Acer</a></li>
																	<li class="menu-item"><a href="#">HP</a></li>
																	<li class="menu-item"><a href="#">Lenovo</a></li>
																	<li class="menu-item"><a href="#">Microsoft
																			(Surface)</a></li>
																	<li class="menu-item"><a href="#">MSI</a></li>
																	<li class="menu-item"><a href="#">Avita</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">PHẦN MỀM</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">Diệt Virus</a></li>
																	<li class="menu-item"><a href="#">Microsoft
																			Office</a></li>
																	<li class="menu-item"><a href="#">Windows</a></li>
																	<li class="menu-item"><a href="#">Phần Mềm
																			Khác</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">MÁY IN</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">HP</a></li>
																	<li class="menu-item"><a href="#">Canon</a></li>
																	<li class="menu-item"><a href="#">Brother</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="dropdown-menu-info">
															<h6 class="dropdown-menu-title">MỨC GIÁ</h6>
															<div class="dropdown-menu-content">
																<ul class="menu">
																	<li class="menu-item"><a href="#">Dưới 5 triệu</a></li>
																	<li class="menu-item"><a href="#">Từ 5 - 10
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Từ 10 - 15
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Từ 15 - 20
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Từ 20 - 25
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Từ 25 - 30
																			triệu</a></li>
																	<li class="menu-item"><a href="#">Trên 30
																			triệu</a></li>
																</ul>

															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row" style="padding-top: 10px;">
												<div class="col-md-6">
													<a href="#" class="promotion-banner item-1 style-3"><img
														src="/images/nen-mua-laptop-hang-acer.jpg"
														style="height: 200px; width: 100%;" alt="banner3"></a>
												</div>
												<div class="col-md-6">
													<a href="#" class="promotion-banner item-1 style-3"><img
														src="/images/nen-mua-laptop-hang-acer2.jpg"
														style="height: 200px; width: 100%;" alt="banner3"></a>
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
												</div>
												<div class="col-md-6" style="padding-top: 10px;">
													<a href="#" class="promotion-banner item-1 style-3"><img
														src="/images/phu-kien-may-tinh2.jpg" style="width: 100%;"
														alt="banner3"></a>
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
									<li><a href="/index/contact" class="dropdown-toggle">Contact
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
							<a href="#" class="title-theme transport hidden-sm"><i
								class="fa fa-truck" aria-hidden="true"></i>Free Shipping on
								orders $99</a>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- end HEADER -->
		<!-- MAIN -->
		<main class="site-main">
			<div class="block-slide">
				<div class="container">
					<div class="main-slide slide-opt-5">
						<div class="owl-carousel nav-style5" data-nav="true"
							data-autoplay="false" data-dots="true" data-loop="true"
							data-margin="0"
							data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":1}}'>
							<div class="item-slide item-slide-1">
								<div class="container">
									<div class="slide-desc slide-desc-1">
										<div class="p-primary">Giảm Giá Ngập Tràn.</div>
										<p>Muôn vàn niềm vui</p>
										<a href="#" class="btn-shop-now">Mua Ngay</a>
									</div>
								</div>
							</div>
							<div class="item-slide item-slide-2">
								<div class="container text-right">
									<div class="slide-desc slide-desc-2">
										<!-- <div class="p-primary">Ưu Đãi Khuyến Mãi!</div>
										<p>FREE SHIP VẬN CHUYỂN</p>
										<a href="#" class="btn-shop-now">Mua Ngay</a> -->
									</div>
								</div>
							</div>
							<div class="item-slide item-slide-3">
								<div class="container">
									<div class="slide-desc slide-desc-3">
										<!-- <div class="p-primary">Complete Your Look</div>
										<p>Fashion for Any Occasion</p>
										<p class="p-second">Up to 50% Off</p>
										<a href="#" class="btn-shop-now">Shop Now</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="promotion-banner banner-slide-2 style-4 hidden-sm hidden-xs">
						<a href="#" class="banner-img"><img
							src="/images/home5/banner1.jpg" alt="banner1"></a>
					</div>
					<div
						class="promotion-banner banner-slide-2 style-4 hidden-sm hidden-xs">
						<a href="#" class="banner-img"><img
							src="/images/home5/banner2.jpg" alt="banner2"></a> <a href="#"
							class="btn-shop-now">Shop now</a>
					</div>
				</div>
			</div>
			<div class="site-main-content">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4 site-main-sidebar">
							<div id="box-vertical-megamenus"
								class="box-vertical-megamenus style2">
								<h4 class="title active">
									<span class="btn-open-mobile home-page"> <span></span> <span></span>
										<span></span>
									</span> <span class="title-menu">All Departments</span>
								</h4>
								<div class="vertical-menu-content">
									<span class="btn-close hidden-md"><i class="fa fa-times"
										aria-hidden="true"></i></span>
									<ul class="vertical-menu-list">
										<li><a href="#">Fashion Men’s</a></li>
										<li class="menu-item-has-children arrow item-megamenu"><a
											href="#" class="dropdown-toggle">Fashion Women’s</a> <span
											class="toggle-submenu hidden-md"></span>
											<div class="submenu parent-megamenu megamenu">
												<div class="row">
													<div class="submenu-banner submenu-banner-menu-1">
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Fashion WoMen’s</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Leather
																				Jackets</a></li>
																		<li class="menu-item"><a href="#">Handbags</a></li>
																		<li class="menu-item"><a href="#">Shoes</a></li>
																		<li class="menu-item"><a href="#">Jewelrys</a></li>
																		<li class="menu-item"><a href="#">Clothings</a></li>
																		<li class="menu-item"><a href="#">Macbook Air</a></li>
																		<li class="menu-item"><a href="#">Laptop Pro</a>
																		</li>
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
																<h6 class="dropdown-menu-title">Fashion WoMen’s</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Leather
																				Jackets</a></li>
																		<li class="menu-item"><a href="#">Handbags</a></li>
																		<li class="menu-item"><a href="#">Shoes</a></li>
																		<li class="menu-item"><a href="#">Jewelrys</a></li>
																		<li class="menu-item"><a href="#">Clothings</a></li>
																		<li class="menu-item"><a href="#">Macbook Air</a></li>
																		<li class="menu-item"><a href="#">Laptop Pro</a>
																		</li>
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
																		<li class="menu-item"><a href="#">Laptop Pro</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="col-md-4">
															<div class="dropdown-menu-info">
																<h6 class="dropdown-menu-title">Accessories</h6>
																<div class="dropdown-menu-content">
																	<ul class="menu">
																		<li class="menu-item"><a href="#">Accessories</a>
																		</li>
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
							<div class="col-xs-6 col-sm-12 padding-0">
								<div class="promotion-banner item-1 style-3">
									<a href="#" class="banner-img"><img
										src="/images/home5/banner3.jpg" alt="banner3"></a> <a
										href="#" class="btn-shop-now hidden-xs">Shop now</a>
								</div>
							</div>
							<div class="col-xs-6 col-sm-12 padding-0">
								<div class="promotion-banner item-2 style-3">
									<a href="#" class="banner-img"><img
										src="/images/home5/banner4.jpg" alt="banner4"></a>
								</div>
							</div>
							<div class="block-latest-roducts">
								<div class="block-title">Latest Products</div>
								<div class="block-latest-roducts-content">
									<div class="owl-carousel nav-style2" data-nav="true"
										data-autoplay="false" data-dots="false" data-loop="true"
										data-margin="0"
										data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":1}}'>
										<div class="owl-ones-row">
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p1.jpg" alt="p1"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">Leather Chelsea Boots</a>
														</div>
														<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p2.jpg" alt="p2"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">2750 Cotu Classic Sneakers</a>
														</div>
														<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p3.jpg" alt="p3"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">Thule Chasm Sport Duffel Bag</a>
														</div>
														<span class="price price-dark"> <ins>$229.00</ins>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p4.jpg" alt="p4"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">Pullover Hoodie - Mens</a>
														</div>
														<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="owl-ones-row">
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p1.jpg" alt="p1"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">Leather Chelsea Boots</a>
														</div>
														<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p2.jpg" alt="p2"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">2750 Cotu Classic Sneakers</a>
														</div>
														<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p3.jpg" alt="p3"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">Thule Chasm Sport Duffel Bag</a>
														</div>
														<span class="price price-dark"> <ins>$229.00</ins>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
											<div class="product-item style1">
												<div class="product-inner">
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="#"><img src="/images/blog/p4.jpg" alt="p4"></a>
														</div>
													</div>
													<div class="product-innfo">
														<div class="product-name">
															<a href="#">Pullover Hoodie - Mens</a>
														</div>
														<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														</span> <span class="star-rating"> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <i class="fa fa-star"
															aria-hidden="true"></i> <span class="review">5
																Review(s)</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="block-the-blog">
								<div class="title-of-section">From The Blog</div>
								<div class="owl-carousel nav-style2" data-nav="true"
									data-autoplay="false" data-dots="false" data-loop="true"
									data-margin="30"
									data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":2},"768":{"items":1}}'>
									<div class="blog-item">
										<div class="post-thumb">
											<a href="#"><img src="/images/home5/blog.jpg" alt="blog"></a>
										</div>
										<div class="post-item-info">
											<div class="fashion-date">Fashion - 04 February 2017</div>
											<h3 class="post-name">
												<a href="#">It’s all about the bread: whole grain home</a>
											</h3>
											<div class="post-metas">
												<span class="author">Post by: <span>Admin</span></span> <span
													class="comment"><i class="fa fa-comment"
													aria-hidden="true"></i>36 Comments</span>
											</div>
										</div>
									</div>
									<div class="blog-item">
										<div class="post-thumb">
											<a href="#"><img src="/images/home5/blog1.jpg" alt="blog"></a>
										</div>
										<div class="post-item-info">
											<div class="fashion-date">Fashion - 04 February 2017</div>
											<h3 class="post-name">
												<a href="#">It’s all about the bread: whole grain home</a>
											</h3>
											<div class="post-metas">
												<span class="author">Post by: <span>Admin</span></span> <span
													class="comment"><i class="fa fa-comment"
													aria-hidden="true"></i>36 Comments</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-9 col-sm-8 padding-left-5 site-main-main">
							<div class="block-top-categori">
								<div class="title-of-section">SẢN PHẨM HOT!</div>
								<div class="owl-carousel nav-style2" data-nav="true"
									data-autoplay="false" data-dots="true" data-loop="true"
									data-margin="20"
									data-responsive='{"0":{"items":1},"480":{"items":2},"640":{"items":3},"768":{"items":2},"992":{"items":4}}'>
									<c:forEach var="id" items="${cateShow}">
									<div class="block-top-categori-item">
										<a href="#"><img src="/images/Cate/${id.image}" alt="h1"></a>
										<div class="block-top-categori-title">${id.name}</div>
									</div>
									</c:forEach>
								</div>
							</div>
							<div class="block-up-to">
								<div class="up-to-content">
									Save up to 40%<span> all online store items.</span>
								</div>
								<a href="grid-product.html" class="shop-all">Shop all deals
									Now</a>
							</div>
							<div class="block-daily-deals style2">
								<div class="title-of-section">Sale Off</div>
								<div class="product-count-down">
									<div class="kt-countdown" data-y="2017" data-m="7" data-d="1"
										data-h="10" data-i="0" data-s="0"></div>
								</div>
								<div class="block-daily-deals-content">


									<!-- ListAddCart -->
									<div class="owl-carousel nav-style2 equal-container"
										data-nav="true" data-autoplay="false" data-dots="true"
										data-loop="true" data-margin="1"
										data-responsive='{"0":{"items":1},"480":{"items":2},"992":{"items":2}}'>

										<!-- ListOneCart -->
										<c:forEach var="p" items="${list_product_SALE}">
											<div class="deal-of-day equal-elem">
												<div class="row">
													<div class="product-thumb style col-sm-5">
														<div class="thumb-inner">
															<a href="#"><img src="/images/All/${p.image}.jpg"
																alt="d1"></a>
														</div>
													</div>
													<div class="product-innfo col-sm-7">
														<div class="info-text">
															<div class="product-name">
																<a href="#">${p.name}.</a>
															</div>
															<span class="price"> <ins>$${((1-p.sale)*p.price)}</ins>
																<del>$${p.price}</del> <span class="onsale">-${p.sale}%</span>
															</span> <span class="star-rating"> <i class="fa fa-star"
																aria-hidden="true"></i> <i class="fa fa-star"
																aria-hidden="true"></i> <i class="fa fa-star"
																aria-hidden="true"></i> <i class="fa fa-star"
																aria-hidden="true"></i> <i class="fa fa-star"
																aria-hidden="true"></i> <span class="review">${p.orders}
																	Review(s)</span>
															</span>
														</div>
														<a href="/shopping-cart/add/${p.id}"
															class="btn-add-to-cart">Add to cart</a>
													</div>
												</div>
											</div>
										</c:forEach>
										<!-- ListOneCart -->
									</div>
									<!-- ListAddCart -->

								</div>
							</div>
							<div class="block-feature-product">
								<div class="title-of-section">Sản Phẩm</div>
								<div class="tab-product tab-product-fade-effect">
									<ul class="box-tabs nav-tab">
										<li class="active"><a data-animated="" data-toggle="tab"
											href="#tab-1">All Products </a></li>
										<li><a data-animated="fadeInLeft" data-toggle="tab"
											href="#tab-2">Đồng Hồ</a></li>
										<li><a data-animated="fadeInDownBig" data-toggle="tab"
											href="#tab-3">Điện Thoại</a></li>
										<li><a data-animated="fadeInDownBig" data-toggle="tab"
											href="#tab-4">Laptop</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-container">
											<!-- TAB-1 -->
											<div id="tab-1" class="tab-panel active">
												<div
													class="owl-carousel nav-style2 border-background equal-container"
													data-nav="true" data-autoplay="false" data-dots="false"
													data-loop="true" data-margin="0"
													data-responsive='{"0":{"items":1},"480":{"items":2},"640":{"items":3},"768":{"items":2},"1000":{"items":4}}'>
													<!-- ALL PRODUCT -->
													<c:forEach var="p" items="${list_product}">
														<div class="owl-one-row">
															<div class="product-item style1">
																<div class="product-inner equal-elem">
																	<div class="product-thumb">
																		<div class="thumb-inner">
																			<a href="#"><img src="/images/All/${p.image}.jpg"
																				alt="f2"></a>
																		</div>
																		<span class="onsale">-${p.sale}%</span> <a href="#"
																			class="quick-view">Quick View</a>
																	</div>
																	<div class="product-innfo">
																		<div class="product-name">
																			<a href="#">${p.name}.</a>
																		</div>
																		<span class="price"> <ins>$${(((100-p.sale)/100)*p.price)}</ins>
																			<del>$${p.price}</del>
																		</span> <span class="star-rating"> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <span
																			class="review">${p.orders} Review(s)</span>
																		</span>
																		<div class="group-btn-hover">
																			<div class="inner">
																				<a href="#" class="compare"><i
																					class="flaticon-refresh-square-arrows"></i></a> <a
																					href="/shopping-cart/add/${p.id}"
																					class="add-to-cart">Add to cart</a> <a href="#"
																					class="wishlist"><i class="fa fa-heart-o"
																					aria-hidden="true"></i></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
													<!-- ALL PRODUCT -->
												</div>
											</div>
											<!-- TAB-1 -->
											<!-- TAB-2 -->
											<div id="tab-2" class="tab-panel active">
												<div
													class="owl-carousel nav-style2 border-background equal-container"
													data-nav="true" data-autoplay="false" data-dots="false"
													data-loop="true" data-margin="0"
													data-responsive='{"0":{"items":1},"480":{"items":2},"640":{"items":3},"768":{"items":2},"1000":{"items":4}}'>
													<!-- ALL PRODUCT -->
													<c:forEach var="p" items="${list_product_DESC}">
														<div class="owl-one-row">
															<div class="product-item style1">
																<div class="product-inner equal-elem">
																	<div class="product-thumb">
																		<div class="thumb-inner">
																			<a href="#"><img src="/images/All/${p.image}.jpg"
																				alt="f2"></a>
																		</div>
																		<span class="onsale">-${p.sale}%</span> <a href="#"
																			class="quick-view">Quick View</a>
																	</div>
																	<div class="product-innfo">
																		<div class="product-name">
																			<a href="#">${p.name}.</a>
																		</div>
																		<span class="price"> <ins>$${(((100-p.sale)/100)*p.price)}</ins>
																			<del>$${p.price}</del>
																		</span> <span class="star-rating"> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <span
																			class="review">${p.orders} Review(s)</span>
																		</span>
																		<div class="group-btn-hover">
																			<div class="inner">
																				<a href="#" class="compare"><i
																					class="flaticon-refresh-square-arrows"></i></a> <a
																					href="/shopping-cart/add/${p.id}"
																					class="add-to-cart">Add to cart</a> <a href="#"
																					class="wishlist"><i class="fa fa-heart-o"
																					aria-hidden="true"></i></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
													<!-- ALL PRODUCT -->
												</div>
											</div>
											<!-- TAB-2 -->
											<!-- TAB-3 -->
											<div id="tab-3" class="tab-panel active">
												<div
													class="owl-carousel nav-style2 border-background equal-container"
													data-nav="true" data-autoplay="false" data-dots="false"
													data-loop="true" data-margin="0"
													data-responsive='{"0":{"items":1},"480":{"items":2},"640":{"items":3},"768":{"items":2},"1000":{"items":4}}'>
													<!-- ALL PRODUCT -->
													<c:forEach var="p" items="${list_product_PRICE}">
														<div class="owl-one-row">
															<div class="product-item style1">
																<div class="product-inner equal-elem">
																	<div class="product-thumb">
																		<div class="thumb-inner">
																			<a href="#"><img src="/images/All/${p.image}.jpg"
																				alt="f2"></a>
																		</div>
																		<span class="onsale">-${p.sale}%</span> <a href="#"
																			class="quick-view">Quick View</a>
																	</div>
																	<div class="product-innfo">
																		<div class="product-name">
																			<a href="#">${p.name}.</a>
																		</div>
																		<span class="price"> <ins>$${p.price}</ins> <del>$${(((100-p.sale)/100)*p.price)}</del>
																		</span> <span class="star-rating"> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <i
																			class="fa fa-star" aria-hidden="true"></i> <span
																			class="review">${p.orders} Review(s)</span>
																		</span>
																		<div class="group-btn-hover">
																			<div class="inner">
																				<a href="#" class="compare"><i
																					class="flaticon-refresh-square-arrows"></i></a> <a
																					href="/shopping-cart/add/${p.id}"
																					class="add-to-cart">Add to cart</a> <a href="#"
																					class="wishlist"><i class="fa fa-heart-o"
																					aria-hidden="true"></i></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
													<!-- ALL PRODUCT -->
												</div>
											</div>
											<!-- TAB-3 -->
										</div>
									</div>
								</div>
							</div>
							<div class="block-promotion-banner">
								<div class="row">
									<div class="col-md-6 col-xs-6 padding-right-10">
										<div class="promotion-banner style-2">
											<a href="#" class="banner-img"><img
												src="/images/home5/banner5.jpg" alt="banner5"></a> <a
												href="#" class="shop-now hidden-xs">Shop now</a>
										</div>
									</div>
									<div class="col-md-6 col-xs-6 padding-left-10">
										<div class="promotion-banner style-2">
											<a href="#" class="banner-img"><img
												src="/images/home5/banner6.jpg" alt="banner6"></a>
										</div>
									</div>
								</div>
							</div>
							<div class="block-bestseller-product bestseller-opt-5">
								<div class="title-of-section style2">BestSeller Products</div>
								<div class="owl-carousel nav-style2 equal-container"
									data-nav="true" data-autoplay="false" data-dots="false"
									data-loop="true" data-margin="20"
									data-responsive='{"0":{"items":1},"480":{"items":2},"1000":{"items":2}}'>
									<div class="owl-one-row">
										<div class="product-item style2">
											<div class="product-inner equal-elem">
												<div class="product-thumb style1">
													<div class="thumb-inner">
														<a href="#"><img src="/images/home5/b1.jpg" alt="b1"></a>
													</div>
												</div>
												<div class="product-innfo">
													<div class="product-name">
														<a href="#">Handbags Collection for Women New Style.</a>
													</div>
													<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														<span class="onsale">-50%</span>
													</span> <span class="star-rating"> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <span class="review">5
															Review(s)</span>
													</span> <a href="#" class="btn-add-to-cart">Add to cart</a>
												</div>
											</div>
										</div>
										<div class="product-item style2">
											<div class="product-inner equal-elem">
												<div class="product-thumb style1">
													<div class="thumb-inner">
														<a href="#"><img src="/images/home5/b3.jpg" alt="b3"></a>
													</div>
												</div>
												<div class="product-innfo">
													<div class="product-name">
														<a href="#">Handbags Collection for Women New Style.</a>
													</div>
													<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														<span class="onnew">new</span>
													</span> <span class="star-rating"> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <span class="review">5
															Review(s)</span>
													</span> <a href="#" class="btn-add-to-cart">Add to cart</a>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-one-row">
										<div class="product-item style2">
											<div class="product-inner equal-elem">
												<div class="product-thumb style1">
													<div class="thumb-inner">
														<a href="#"><img src="/images/home5/b2.jpg" alt="b2"></a>
													</div>
												</div>
												<div class="product-innfo">
													<div class="product-name">
														<a href="#">Handbags Collection for Women New Style.</a>
													</div>
													<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
														<span class="onnew">new</span>
													</span> <span class="star-rating"> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <span class="review">5
															Review(s)</span>
													</span> <a href="#" class="btn-add-to-cart">Add to cart</a>
												</div>
											</div>
										</div>
										<div class="product-item style2">
											<div class="product-inner equal-elem">
												<div class="product-thumb style1">
													<div class="thumb-inner">
														<a href="#"><img src="/images/home5/b4.jpg" alt="b4"></a>
													</div>
												</div>
												<div class="product-innfo">
													<div class="product-name">
														<a href="#">Handbags Collection for Women New Style.</a>
													</div>
													<span class="price"> <ins>$229.00</ins> <del>$259.00</del>
													</span> <span class="star-rating"> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <i class="fa fa-star"
														aria-hidden="true"></i> <span class="review">5
															Review(s)</span>
													</span> <a href="#" class="btn-add-to-cart">Add to cart</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="block-brand style2">
				<div class="container">
					<div class="section-brand">
						<div class="owl-carousel nav-style3" data-nav="true"
							data-autoplay="false" data-dots="false" data-loop="true"
							data-margin="20"
							data-responsive='{"0":{"items":2},"480":{"items":3},"600":{"items":4},"1000":{"items":5}}'>
							<a href="#" class="item-brand"><img
								src="/images/home5/brand.jpg" alt="brand"></a> <a href="#"
								class="item-brand"><img src="/images/home5/brand.jpg"
								alt="brand"></a> <a href="#" class="item-brand"><img
								src="/images/home5/brand.jpg" alt="brand"></a> <a href="#"
								class="item-brand"><img src="/images/home5/brand.jpg"
								alt="brand"></a> <a href="#" class="item-brand"><img
								src="/images/home5/brand.jpg" alt="brand"></a> <a href="#"
								class="item-brand"><img src="/images/home5/brand.jpg"
								alt="brand"></a>
						</div>
					</div>
				</div>
			</div>
		</main>
		<!-- end MAIN -->
		<!-- FOOTER -->
		<footer class="site-footer footer-opt-3 full-width">
			<div class="footer-column">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="links">
								<h3 class="title-of-section">My account</h3>
								<ul>
									<li><a href="#">Sign In</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">My Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<h3 class="title-of-section">Contact information</h3>
							<div class="contacts">
								<h3 class="contacts-title">Address</h3>
								<span class="contacts-info">218 Fifth Avenue, HeavenTower
									NewYork City</span>
								<h3 class="contacts-title">Phone</h3>
								<span class="contacts-info">(+68) 123 456 7890</span>
								<h3 class="contacts-title">Email</h3>
								<span class="contacts-info">Hot-Support@Krystal.com</span>
							</div>
						</div>
						<div class="col-md-2 col-sm-6">
							<div class="links">
								<h3 class="title-of-section">Information</h3>
								<ul>
									<li><a href="#">Delivery information</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="#">Contact us</a></li>
									<li><a href="#">Sitemap</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4 col-sm-6">
							<div class="links">
								<h3 class="title-of-section">Newsletter</h3>
								<span class="title-newsletter-footer">Get all the latest
									information on Events,<br>Sales and Offers. Sign up for
									newsletter today.
								</span>
								<p class="title-placeholder">Enter Your email Address</p>
								<div class="newsletter-form">
									<form id="newsletter-validate-detail" class="form subscribe">
										<div class="control">
											<input type="email" id="newsletter" name="email"
												class="input-subscribe">
											<button type="submit" title="Subscribe" class="btn subscribe">
												<span>Subscribe</span>
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<div class="links">
						<h3 class="quick-link">Quick Links</h3>
						<ul>
							<li><a href="#" class="links-primary">Tablets:</a></li>
							<li><a href="#">Windows Tablets</a></li>
							<li><a href="#">Android Tablets</a></li>
							<li><a href="#">Micromax Tablets</a></li>
							<li><a href="#">HCL Tablets </a></li>
							<li><a href="#">Samsung Tablets</a></li>
							<li><a href="#">Lenovo Tablets</a></li>
							<li><a href="#">Asus Tablets</a></li>
							<li><a href="#">Apple Tablets </a></li>
							<li><a href="#">HCL Tablets</a></li>
							<li><a href="#">Samsung Tablets </a></li>
							<li><a href="#">Lenovo Tablets</a></li>
						</ul>
						<ul>
							<li><a href="#" class="links-primary">Mobiles:</a></li>
							<li><a href="#">Moto E</a></li>
							<li><a href="#">Samsung Mobile</a></li>
							<li><a href="#">Micromax Mobile</a></li>
							<li><a href="#">Nokia Mobile</a></li>
							<li><a href="#">HTC Mobile</a></li>
							<li><a href="#">Sony Mobile</a></li>
							<li><a href="#">Apple Mobile</a></li>
							<li><a href="#">LG Mobile</a></li>
							<li><a href="#">Karbonn Mobile</a></li>
							<li><a href="#">Furniture</a></li>
							<li><a href="#">Lenovo A7000</a></li>
							<li><a href="#">Home Store</a></li>
						</ul>
						<ul>
							<li><a href="#" class="links-primary">Watches:</a></li>
							<li><a href="#">The Big Billion Days</a></li>
							<li><a href="#">MOTO X Play</a></li>
							<li><a href="#">Furniture</a></li>
							<li><a href="#">Lenovo A7000</a></li>
							<li><a href="#">Home Store</a></li>
							<li><a href="#">Electronic Sale</a></li>
							<li><a href="#">Offers</a></li>
						</ul>
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
	<script type="text/javascript" src="/js/script.js"></script>
	<script>
		function myFunction() {
			var x = document.getElementById("snackbar")
			x.className = "show";
			setTimeout(function() {
				x.className = x.className.replace("show", "");
			}, 3000);
		}
	</script>
</body>

<!-- Mirrored from kute-themes.com/html/krystal/html/index5.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 May 2021 05:17:29 GMT -->

</html>