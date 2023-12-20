<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2"
	style="background-color: #607D8B">
	<!-- Container wrapper -->
	<div class="container-fluid">

		<!-- Navbar brand -->
		<b class="navbar-brand">Category:</b>

		<!-- Toggle button -->
		<button class="navbar-toggler" type="button"
			data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent2"
			aria-controls="navbarSupportedContent2" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Collapsible wrapper -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent2">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<!-- Link -->

				<li class="nav-item active"><a class="nav-link text-white"
					href="load">All</a></li>

				<c:forEach items="${itemsC}" var="x">
					<li class="nav-item hover-overlay hover-zoom hover-shadow ripple">
						<a class="nav-link text-white"
						href="filter-by-category?category_id=${x.category_id}">${x.category_name}</a>
					</li>
				</c:forEach>

			</ul>

			<!-- Search -->
			<form action="search" method="post" class="w-auto py-1" style="max-width: 12rem">
				<input type="search" class="form-control rounded-0" name="search"
					placeholder="Search" aria-label="Search" value="${txtsearch}">
			</form>

		</div>
	</div>
	<!-- Container wrapper -->
</nav>
<!-- Navbar -->