<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
	
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white">
	<!-- Container wrapper -->
	<div class="container">
		<!-- Toggle button -->
		<button class="navbar-toggler" type="button"
			data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent1"
			aria-controls="navbarSupportedContent1" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Collapsible wrapper -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent1">
			<!-- Navbar brand -->
			<a class="navbar-brand mt-2 mt-sm-0" href="load"> <img
				src="img/book.png" height="35" alt="My Book Store Logo"/>
			</a>
			<!-- Left links -->
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item active"><a class="nav-link " href="load">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="https://nhasachphuongnam.com/">About MDS</a></li>
				<c:if test="${account.account_is_admin == 1}">
					<li class="nav-item"><a class="nav-link"
						href="#">Manager Account</a></li>
				</c:if>
				<c:if test="${account.account_is_sell == 1}">
					<li class="nav-item"><a class="nav-link"
						href="manager-product">Manager Product</a></li>
				</c:if>
			</ul>
			<!-- Left links -->
		</div>
		<!-- Collapsible wrapper -->

		<!-- Right elements -->
		<div class="d-flex align-items-center">
			<!-- Icon -->
			<a class="nav-link me-3" href="#"> <i
				class="fas fa-shopping-cart"></i> <span
				class="badge rounded-pill badge-notification bg-danger">1</span>
			</a> <a class="nav-link me-3"
				href="https://www.facebook.com/nguyentienduy1411/"> <i
				class="fab fa-facebook-f"></i>
			</a> <a class="nav-link me-3" href="#"> <i class="fab fa-twitter"></i>
			</a> 
			
			<c:if test="${account != null}">
				<div class="dropdown">
				  <button
					id="dropdownMenuButton" data-mdb-dropdown-init data-mdb-ripple-init class="dropdown-toggle border rounded px-2 nav-link">
					<i class="fa-solid fa-user"></i> ${account.account_username}
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				    <li><a class="dropdown-item" href="logout"><i class="fa-solid fa-right-from-bracket"></i> Log out</a></li>
				  </ul>
				</div>
			</c:if>
			<c:if test="${account == null}">
				<a href="Login.jsp" class="border rounded px-2 nav-link" target="_blank">
					<i class="fa-solid fa-clipboard"></i> Log in
				</a>
			</c:if>
			
		</div>
		<!-- Right elements -->

	</div>
	<!-- Container wrapper -->
</nav>