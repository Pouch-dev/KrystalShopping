<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>




<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="/img_admin/apple-icon.png" />
<link rel="icon" type="image/png" href="/img_admin/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Material Dashboard PRO by Creative Tim | Premium
	Bootstrap Admin Template</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!-- Canonical SEO -->
<link rel="canonical"
	href="https://www.creative-tim.com/product/material-dashboard-pro" />
<!-- Bootstrap core CSS     -->
<link href="/css_admin/bootstrap.min.css" rel="stylesheet" />



<!--  Material Dashboard CSS    -->
<link href="/css_admin/material-dashboard98f3.css?v=1.3.0"
	rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="/css_admin/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link href="/css_admin/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '../../../../../www.googletagmanager.com/gtm5445.html?id=' + i
				+ dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');
</script>
<!-- End Google Tag Manager -->

</head>


<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">

		<div class="sidebar" data-active-color="rose"
			data-background-color="black" data-image="/img_admin/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->

			<div class="sidebar-wrapper">
				<div class="user">
					<div class="photo">
						<img src="/img_admin/faces/avatar.jpg" />
					</div>
					<form action="/index/login" method="get"
						enctype="multipart/form-data">
						<div class="info">
							<c:if test="${sessionScope.username == null}">
								<a href="/index/login_admin">Register / Sign in </a>
							</c:if>
							<c:if test="${sessionScope.username != null}">
								<a data-toggle="collapse" href="#collapseExample"
									class="collapsed"> <span> ${sessionScope.username} <b
										class="caret"></b>
								</span>
								</a>
								<div class="clearfix"></div>
								<div class="collapse" id="collapseExample">
									<ul class="nav">
										<li><a href="/index/login"> <span
												class="sidebar-mini"> MP </span> <span
												class="sidebar-normal"> My Profile </span>
										</a></li>
										<li><a href="#"> <span class="sidebar-mini">
													EP </span> <span class="sidebar-normal"> Edit Profile </span>
										</a></li>
										<li><a href="/index/logout"> <span
												class="sidebar-mini"> LO </span> <span
												class="sidebar-normal"> Log out </span>
										</a></li>
									</ul>
								</div>
							</c:if>
						</div>
					</form>
				</div>
				<ul class="nav">

					<li class="active"><a href="dashboard.html"> <i
							class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>

					<li><a data-toggle="collapse" href="#pagesExamples"> <i
							class="material-icons">image</i>
							<p>
								Pages <b class="caret"></b>
							</p>
					</a>

						<div class="collapse" id="pagesExamples">
							<ul class="nav">
								<li><a href="pages/pricing.html"> <span
										class="sidebar-mini"> P </span> <span class="sidebar-normal">
											Pricing </span>
								</a></li>
								<li><a href="pages/rtl.html"> <span
										class="sidebar-mini"> RS </span> <span class="sidebar-normal">
											RTL Support </span>
								</a></li>
								<li><a href="pages/timeline.html"> <span
										class="sidebar-mini"> T </span> <span class="sidebar-normal">
											Timeline </span>
								</a></li>
								<li><a href="pages/login.html"> <span
										class="sidebar-mini"> LP </span> <span class="sidebar-normal">
											Login Page </span>
								</a></li>
								<li><a href="pages/register.html"> <span
										class="sidebar-mini"> RP </span> <span class="sidebar-normal">
											Register Page </span>
								</a></li>
								<li><a href="pages/lock.html"> <span
										class="sidebar-mini"> LSP </span> <span class="sidebar-normal">
											Lock Screen Page </span>
								</a></li>
								<li><a href="pages/user.html"> <span
										class="sidebar-mini"> UP </span> <span class="sidebar-normal">
											User Profile </span>
								</a></li>
							</ul>
						</div></li>

					<li><a data-toggle="collapse" href="#componentsExamples">
							<i class="material-icons">apps</i>
							<p>
								Components <b class="caret"></b>
							</p>
					</a>

						<div class="collapse" id="componentsExamples">
							<ul class="nav">
								<li><a href="components/buttons.html"> <span
										class="sidebar-mini"> B </span> <span class="sidebar-normal">
											Buttons </span>
								</a></li>
								<li><a href="components/grid.html"> <span
										class="sidebar-mini"> GS </span> <span class="sidebar-normal">
											Grid System </span>
								</a></li>
								<li><a href="components/panels.html"> <span
										class="sidebar-mini"> P </span> <span class="sidebar-normal">
											Panels </span>
								</a></li>
								<li><a href="components/sweet-alert.html"> <span
										class="sidebar-mini"> SA </span> <span class="sidebar-normal">
											Sweet Alert </span>
								</a></li>
								<li><a href="components/notifications.html"> <span
										class="sidebar-mini"> N </span> <span class="sidebar-normal">
											Notifications </span>
								</a></li>
								<li><a href="components/icons.html"> <span
										class="sidebar-mini"> I </span> <span class="sidebar-normal">
											Icons </span>
								</a></li>
								<li><a href="components/typography.html"> <span
										class="sidebar-mini"> T </span> <span class="sidebar-normal">
											Typography </span>
								</a></li>
							</ul>
						</div></li>

					<li><a data-toggle="collapse" href="#formsExamples"> <i
							class="material-icons">content_paste</i>
							<p>
								Forms <b class="caret"></b>
							</p>
					</a>

						<div class="collapse" id="formsExamples">
							<ul class="nav">
								<li><a href="forms/regular.html"> <span
										class="sidebar-mini"> RF </span> <span class="sidebar-normal">
											Regular Forms </span>
								</a></li>
								<li><a href="forms/extended.html"> <span
										class="sidebar-mini"> EF </span> <span class="sidebar-normal">
											Extended Forms </span>
								</a></li>
								<li><a href="forms/validation.html"> <span
										class="sidebar-mini"> VF </span> <span class="sidebar-normal">
											Validation Forms </span>
								</a></li>
								<li><a href="forms/wizard.html"> <span
										class="sidebar-mini"> W </span> <span class="sidebar-normal">
											Wizard </span>
								</a></li>
							</ul>
						</div></li>

					<li><a data-toggle="collapse" href="#tablesExamples"> <i
							class="material-icons">grid_on</i>
							<p>
								Tables <b class="caret"></b>
							</p>
					</a>

						<div class="collapse" id="tablesExamples">
							<ul class="nav">
								<li><a href="tables/regular.html"> <span
										class="sidebar-mini"> RT </span> <span class="sidebar-normal">
											Regular Tables </span>
								</a></li>
								<li><a href="tables/extended.html"> <span
										class="sidebar-mini"> ET </span> <span class="sidebar-normal">
											Extended Tables </span>
								</a></li>
								<li><a href="tables/datatables.net.html"> <span
										class="sidebar-mini"> DT </span> <span class="sidebar-normal">
											DataTables.net </span>
								</a></li>
							</ul>
						</div></li>

					<li><a data-toggle="collapse" href="#mapsExamples"> <i
							class="material-icons">place</i>
							<p>
								Maps <b class="caret"></b>
							</p>
					</a>

						<div class="collapse" id="mapsExamples">
							<ul class="nav">
								<li><a href="maps/google.html"> <span
										class="sidebar-mini"> GM </span> <span class="sidebar-normal">
											Google Maps </span>
								</a></li>
								<li><a href="maps/fullscreen.html"> <span
										class="sidebar-mini"> FSM </span> <span class="sidebar-normal">
											Full Screen Map </span>
								</a></li>
								<li><a href="maps/vector.html"> <span
										class="sidebar-mini"> VM </span> <span class="sidebar-normal">
											Vector Map </span>
								</a></li>
							</ul>
						</div></li>

					<li><a href="widgets.html"> <i class="material-icons">widgets</i>
							<p>Widgets</p>
					</a></li>

					<li><a href="charts.html"> <i class="material-icons">timeline</i>
							<p>Charts</p>
					</a></li>

					<li><a href="calendar.html"> <i class="material-icons">date_range</i>
							<p>Calendar</p>
					</a></li>

				</ul>
			</div>
		</div>


		<div class="main-panel">

			<nav class="navbar navbar-transparent navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-minimize">
						<button id="minimizeSidebar"
							class="btn btn-round btn-white btn-fill btn-just-icon">
							<i class="material-icons visible-on-sidebar-regular">more_vert</i>
							<i class="material-icons visible-on-sidebar-mini">view_list</i>
						</button>
					</div>
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"> Dashboard </a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#pablo" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="material-icons">dashboard</i>
									<p class="hidden-lg hidden-md">Dashboard</p>
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="material-icons">notifications</i>
									<span class="notification">5</span>
									<p class="hidden-lg hidden-md">
										Notifications <b class="caret"></b>
									</p>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Mike John responded to your email</a></li>
									<li><a href="#">You have 5 new tasks</a></li>
									<li><a href="#">You're now friend with Andrew</a></li>
									<li><a href="#">Another Notification</a></li>
									<li><a href="#">Another One</a></li>
								</ul></li>
							<li><a href="#pablo" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="material-icons">person</i>
									<p class="hidden-lg hidden-md">Profile</p>
							</a></li>

							<li class="separator hidden-lg hidden-md"></li>
						</ul>


						<form class="navbar-form navbar-right" role="search">
							<div class="form-group form-search is-empty">
								<input type="text" class="form-control" placeholder=" Search ">
								<span class="material-input"></span>
							</div>
							<button type="submit"
								class="btn btn-white btn-round btn-just-icon">
								<i class="material-icons">search</i>
								<div class="ripple-container"></div>
							</button>
						</form>
					</div>
				</div>
			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-icon"
									data-background-color="rose">
									<i class="material-icons">assignment</i>
								</div>

								<div class="card-content">
									<h4 class="card-title">Product</h4>
									<div class="text-right">
										<button type="button"
											class="btn btn-sm btn-primary btn-create">+ Add new
											product</button>
									</div>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th class="text-center">#</th>
													<th>Name</th>
													<th class="text-center">Price</th>
													<th class="text-center">NewPrice</th>
													<th class="text-center">Sale</th>
													<th class="text-center"></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="p" items="${list_product.content}">
													<form:form action="/index/edit/${p.id}">
														<tr>
															<td class="text-center">${p.id}</td>
															<td>${p.name}</td>
															<td class="text-center">$${p.price}</td>
															<td class="text-center">$${(((100-p.sale)/100)*p.price)}</td>
															<td class="text-center">$${p.sale}</td>
															<td class="td-actions text-center">
																<button
																	data-toggle="modal" data-target="#exampleModal">
																	<i class="material-icons">person</i>
																</button>
																<button type="button" rel="tooltip"
																	class="btn btn-danger btn-simple">
																	<i class="material-icons">close</i>
																</button></td>
														</tr>
													</form:form>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-end col-sm-9">
											<li class="page-item"><a class="page-link"
												href="indexAD?show=0" tabindex="-1" aria-disabled="true">First</a></li>
											<li class="page-item"><a class="page-link"
												href="indexAD?show=${list_product.number-1}">Prev</a></li>
											<li class="page-item"><a class="page-link"
												href="indexAD?show=${list_product.number+1}">Next</a></li>
											<li class="page-item"><a class="page-link"
												href="indexAD?show=${list_product.totalPages-1}">Last</a></li>
										</ul>
										<span class="show-resuilt col-sm-3">Showing
											${list_product.number+1} of ${list_product.totalPages} result</span>
									</nav>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="card card-chart">
								<div class="card-header" data-background-color="rose"
									data-header-animation="true">
									<div class="ct-chart" id="websiteViewsChart"></div>
								</div>
								<div class="card-content">
									<div class="card-actions">
										<button type="button"
											class="btn btn-danger btn-simple fix-broken-card">
											<i class="material-icons">build</i> Fix Header!
										</button>

										<button type="button" class="btn btn-info btn-simple"
											rel="tooltip" data-placement="bottom" title="Refresh">
											<i class="material-icons">refresh</i>
										</button>
										<button type="button" class="btn btn-default btn-simple"
											rel="tooltip" data-placement="bottom" title="Change Date">
											<i class="material-icons">edit</i>
										</button>
									</div>

									<h4 class="card-title">Website Views</h4>
									<p class="category">Last Campaign Performance</p>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">access_time</i> campaign sent 2 days
										ago
									</div>
								</div>

							</div>
						</div>

						<div class="col-md-4">
							<div class="card card-chart">
								<div class="card-header" data-background-color="green"
									data-header-animation="true">
									<div class="ct-chart" id="dailySalesChart"></div>
								</div>
								<div class="card-content">
									<div class="card-actions">
										<button type="button"
											class="btn btn-danger btn-simple fix-broken-card">
											<i class="material-icons">build</i> Fix Header!
										</button>

										<button type="button" class="btn btn-info btn-simple"
											rel="tooltip" data-placement="bottom" title="Refresh">
											<i class="material-icons">refresh</i>
										</button>
										<button type="button" class="btn btn-default btn-simple"
											rel="tooltip" data-placement="bottom" title="Change Date">
											<i class="material-icons">edit</i>
										</button>
									</div>

									<h4 class="card-title">Daily Sales</h4>
									<p class="category">
										<span class="text-success"><i
											class="fa fa-long-arrow-up"></i> 55% </span> increase in today
										sales.
									</p>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">access_time</i> updated 4 minutes
										ago
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="card card-chart">
								<div class="card-header" data-background-color="blue"
									data-header-animation="true">
									<div class="ct-chart" id="completedTasksChart"></div>
								</div>
								<div class="card-content">
									<div class="card-actions">
										<button type="button"
											class="btn btn-danger btn-simple fix-broken-card">
											<i class="material-icons">build</i> Fix Header!
										</button>

										<button type="button" class="btn btn-info btn-simple"
											rel="tooltip" data-placement="bottom" title="Refresh">
											<i class="material-icons">refresh</i>
										</button>
										<button type="button" class="btn btn-default btn-simple"
											rel="tooltip" data-placement="bottom" title="Change Date">
											<i class="material-icons">edit</i>
										</button>
									</div>

									<h4 class="card-title">Completed Tasks</h4>
									<p class="category">Last Campaign Performance</p>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">access_time</i> campaign sent 2 days
										ago
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="orange">
									<i class="material-icons">weekend</i>
								</div>
								<div class="card-content">
									<p class="category">Bookings</p>
									<h3 class="card-title">184</h3>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons text-danger">warning</i> <a
											href="#pablo">Get More Space...</a>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="rose">
									<i class="material-icons">equalizer</i>
								</div>
								<div class="card-content">
									<p class="category">Website Visits</p>
									<h3 class="card-title">75.521</h3>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">local_offer</i> Tracked from Google
										Analytics
									</div>
								</div>
							</div>
						</div>


						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="green">
									<i class="material-icons">store</i>
								</div>
								<div class="card-content">
									<p class="category">Revenue</p>
									<h3 class="card-title">$34,245</h3>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">date_range</i> Last 24 Hours
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="blue">
									<i class="fa fa-twitter"></i>
								</div>
								<div class="card-content">
									<p class="category">Followers</p>
									<h3 class="card-title">+245</h3>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">update</i> Just Updated
									</div>
								</div>
							</div>
						</div>
					</div>

					<h3>Manage Listings</h3>
					<br>
					<div class="row">
						<div class="col-md-4">
							<div class="card card-product">
								<div class="card-image" data-header-animation="true">
									<a href="#pablo"> <img class="img"
										src="/img_admin/card-2.jpg">
									</a>
								</div>

								<div class="card-content">
									<div class="card-actions">
										<button type="button"
											class="btn btn-danger btn-simple fix-broken-card">
											<i class="material-icons">build</i> Fix Header!
										</button>

										<button type="button" class="btn btn-default btn-simple"
											rel="tooltip" data-placement="bottom" title="View">
											<i class="material-icons">art_track</i>
										</button>
										<button type="button" class="btn btn-success btn-simple"
											rel="tooltip" data-placement="bottom" title="Edit">
											<i class="material-icons">edit</i>
										</button>
										<button type="button" class="btn btn-danger btn-simple"
											rel="tooltip" data-placement="bottom" title="Remove">
											<i class="material-icons">close</i>
										</button>
									</div>

									<h4 class="card-title">
										<a href="#pablo">Cozy 5 Stars Apartment</a>
									</h4>
									<div class="card-description">The place is close to
										Barceloneta Beach and bus stop just 2 min by walk and near to
										"Naviglio" where you can enjoy the main night life in
										Barcelona.</div>
								</div>
								<div class="card-footer">
									<div class="price">
										<h4>$899/night</h4>
									</div>
									<div class="stats pull-right">
										<p class="category">
											<i class="material-icons">place</i> Barcelona, Spain
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="card card-product">
								<div class="card-image" data-header-animation="true">
									<a href="#pablo"> <img class="img"
										src="/img_admin/card-3.jpg">
									</a>
								</div>

								<div class="card-content">
									<div class="card-actions">
										<button type="button"
											class="btn btn-danger btn-simple fix-broken-card">
											<i class="material-icons">build</i> Fix Header!
										</button>

										<button type="button" class="btn btn-default btn-simple"
											rel="tooltip" data-placement="bottom" title="View">
											<i class="material-icons">art_track</i>
										</button>
										<button type="button" class="btn btn-success btn-simple"
											rel="tooltip" data-placement="bottom" title="Edit">
											<i class="material-icons">edit</i>
										</button>
										<button type="button" class="btn btn-danger btn-simple"
											rel="tooltip" data-placement="bottom" title="Remove">
											<i class="material-icons">close</i>
										</button>
									</div>

									<h4 class="card-title">
										<a href="#pablo">Office Studio</a>
									</h4>
									<div class="card-description">The place is close to Metro
										Station and bus stop just 2 min by walk and near to "Naviglio"
										where you can enjoy the night life in London, UK.</div>
								</div>
								<div class="card-footer">
									<div class="price">
										<h4>$1.119/night</h4>
									</div>
									<div class="stats pull-right">
										<p class="category">
											<i class="material-icons">place</i> London, UK
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="card card-product">
								<div class="card-image" data-header-animation="true">
									<a href="#pablo"> <img class="img"
										src="/img_admin/card-1.jpg">
									</a>
								</div>

								<div class="card-content">
									<div class="card-actions">
										<button type="button"
											class="btn btn-danger btn-simple fix-broken-card">
											<i class="material-icons">build</i> Fix Header!
										</button>

										<button type="button" class="btn btn-default btn-simple"
											rel="tooltip" data-placement="bottom" title="View">
											<i class="material-icons">art_track</i>
										</button>
										<button type="button" class="btn btn-success btn-simple"
											rel="tooltip" data-placement="bottom" title="Edit">
											<i class="material-icons">edit</i>
										</button>
										<button type="button" class="btn btn-danger btn-simple"
											rel="tooltip" data-placement="bottom" title="Remove">
											<i class="material-icons">close</i>
										</button>
									</div>

									<h4 class="card-title">
										<a href="#pablo">Beautiful Castle</a>
									</h4>
									<div class="card-description">The place is close to Metro
										Station and bus stop just 2 min by walk and near to "Naviglio"
										where you can enjoy the main night life in Milan.</div>
								</div>
								<div class="card-footer">
									<div class="price">
										<h4>$459/night</h4>
									</div>
									<div class="stats pull-right">
										<p class="category">
											<i class="material-icons">place</i> Milan, Italy
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>


			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						</div>
						<div class="modal-body">
							<!-- ItemCart -->
										<c:forEach var="item" items="${list_product}">
												<tr>
													<td><a href="#" class="item-photo"><img
															src="/images/All/${item.image}.jpg" alt="cart"></a></td>
													<td class="tb-product">
														<div class="product-name">
															<a href="#">${item.name}.</a>
														</div>
													</td>
													<td class="tb-price">
															<span>$${(((100-item.sale)/100)*item.price)}</span>/
	                                                        <del><small>$${item.price}</small></del>
													</td>
													<td class="tb-qty">
														<div class="quantity">
															<div class="buttons-added">
                                                        <input type="text" value="${item.quantity}" name="qty" class="input-text qty text" size="1">
                                                        <!-- <a href="#" class="sign plus"><i class="fa fa-plus"></i></a>
                                                        <a href="#" class="sign minus"><i class="fa fa-minus"></i></a> -->
															</div>
														</div>
													</td>
													<td class="tb-total"><span class="price">$${(((100-item.sale)/100)*item.price)*item.quantity}</span>
													</td>
													<td class="tb-remove"><a
														href="/indexAD/remove/${item.productID}"
														class="action-remove"><span><i
																class="fa fa-times" aria-hidden="true"></i></span></a></td>
												</tr>
										</c:forEach>
										<!-- ItemCart -->
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
				</div>
			</div>



			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							<li><a href="#"> Home </a></li>
							<li><a href="#"> Company </a></li>
							<li><a href="#"> Portofolio </a></li>
							<li><a href="#"> Blog </a></li>
						</ul>
					</nav>
					<p class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						<a href="https://www.creative-tim.com/"> Creative Tim </a>, made
						with love for a better web
					</p>
				</div>
			</footer>


		</div>
	</div>
	<div class="fixed-plugin">
		<div class="dropdown ">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors text-center">
							<span class="badge filter badge-purple" data-color="purple"></span>
							<span class="badge filter badge-blue" data-color="blue"></span> <span
								class="badge filter badge-green" data-color="green"></span> <span
								class="badge filter badge-orange" data-color="orange"></span> <span
								class="badge filter badge-red" data-color="red"></span> <span
								class="badge filter badge-rose active" data-color="rose"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Sidebar Background</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger background-color">
						<div class="text-center">
							<span class="badge filter badge-white" data-color="white"></span>
							<span class="badge filter badge-black active" data-color="black"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>

				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger">
						<p>Sidebar Mini</p>
						<div class="togglebutton switch-sidebar-mini">
							<label> <input type="checkbox" unchecked="">
							</label>
						</div>
						<div class="clearfix"></div>
				</a></li>

				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger">
						<p>Sidebar Image</p>
						<div class="togglebutton switch-sidebar-image">
							<label> <input type="checkbox" checked="">
							</label>
						</div>
						<div class="clearfix"></div>
				</a></li>

				<li class="header-title">Images</li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/img_admin/sidebar-1.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/img_admin/sidebar-2.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/img_admin/sidebar-3.jpg"
						alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img src="/img_admin/sidebar-4.jpg"
						alt="" />
				</a></li>
			</ul>
		</div>
	</div>

</body>

<!--   Core JS Files   -->
<script src="/js_admin/jquery.min.js" type="text/javascript"></script>
<script src="/js_admin/bootstrap.min.js" type="text/javascript"></script>
<script src="/js_admin/material.min.js" type="text/javascript"></script>
<script src="/js_admin/perfect-scrollbar.jquery.min.js"
	type="text/javascript"></script>

<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script
	src="../../../../cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

<!-- Library for adding dinamically elements -->
<script src="/js_admin/arrive.min.js" type="text/javascript"></script>

<!-- Forms Validations Plugin -->
<script src="/js_admin/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/js_admin/moment.min.js"></script>

<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="/js_admin/chartist.min.js"></script>

<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/js_admin/jquery.bootstrap-wizard.js"></script>

<!--  Notifications Plugin, full documentation here: https://bootstrap-notify.remabledesigns.com/    -->
<script src="/js_admin/bootstrap-notify.js"></script>

<!--   Sharrre Library    -->
<script src="/js_admin/jquery.sharrre.js"></script>

<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="/js_admin/bootstrap-datetimepicker.js"></script>

<!-- Vector Map plugin, full documentation here: https://jvectormap.com/documentation/ -->
<script src="/js_admin/jquery-jvectormap.js"></script>

<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="/js_admin/nouislider.min.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js_admin?key=AIzaSyD1_8C5Xz9RpEeJSaJ3E_DeBv8i7j_p6Aw"></script>

<!--  Plugin for Select, full documentation here: https://silviomoreto.github.io/bootstrap-select -->
<script src="/js_admin/jquery.select-bootstrap.js"></script>

<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="/js_admin/jquery.datatables.js"></script>

<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="/js_admin/sweetalert2.js"></script>

<!-- Plugin for Fileupload, full documentation here: https://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/js_admin/jasny-bootstrap.min.js"></script>

<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/js_admin/fullcalendar.min.js"></script>

<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="/js_admin/jquery.tagsinput.js"></script>

<!-- Material Dashboard javascript methods -->
<script src="/js_admin/material-dashboard98f3.js?v=1.3.0"></script>

<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/js_admin/demo.js"></script>

<script>
	// Facebook Pixel Code Don't Delete
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'../../../../connect.facebook.net/en_US/fbevents.js');

	try {
		fbq('init', '111649226022273');
		fbq('track', "PageView");

	} catch (err) {
		console.log('Facebook Track Error:', err);
	}
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1" />
</noscript>





<script type="text/javascript">
	$(document).ready(function() {

		// Javascript method's body can be found in assets/js_admin/demos.js
		demo.initDashboardPageCharts();

		demo.initVectorMap();
	});
</script>





<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 03 Jun 2021 22:11:14 GMT -->
</html>
