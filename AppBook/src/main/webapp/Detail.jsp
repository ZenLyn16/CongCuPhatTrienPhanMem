<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>My Book Store</title>
    <!-- MDB icon -->
    <link rel="icon" href="img/book.png" type="image/x-icon" />
    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <!-- Google Fonts Roboto -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
    />
    <!-- MDB -->
    <link rel="stylesheet" href="css/mdb.min.css" />
    <!-- JSTL -->
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
  </head>
  
  
  
  <body>
    <!-- Start your project here-->
	<jsp:include page="Header.jsp"></jsp:include>
	
	<!--Main layout-->
	<main class="mt-5 pt-4">
	    <div class="container mt-5">
	    <jsp:include page="Menu.jsp"></jsp:include>
	    
	        <!--Grid row-->
	        <div class="row">
	            <!--Grid column-->
	            <div class="col-md-4 mb-4">
	                <img src="${book.book_image}" class="img-fluid" alt="" />
	            </div>
	            <!--Grid column-->
	
	            <!--Grid column-->
	            <div class="col-md-6 mb-4">
	                <!--Content-->
	                <div class="p-4">
	                    <div class="mb-3">
	                        <a href="">
	                            <span class="badge bg-dark me-1">${book.book_category.category_name}</span>
	                        </a>
	                        <a href="">
	                            <span class="badge bg-info me-1">New</span>
	                        </a>
	                        <a href="">
	                            <span class="badge bg-danger me-1">Bestseller</span>
	                        </a>
	                    </div>
	
	                    <p class="lead">
	                        <span class="me-1">
	                            <del>200</del>
	                        </span>
	                        <span>${book.book_price}</span>
	                    </p>
	
	                    <strong><p style="font-size: 20px;">Mô tả</p></strong>
	
	                    <p>${book.book_notes}</p>
	
	                    <form class="d-flex justify-content-left">
	                        <!-- Default input -->
	                        <div class="form-outline me-1" style="width: 100px;">
	                            <span>Số lượng</span>
	                        </div>
	                        <div class="form me-1" style="width: 100px;">
	                            <input type="number" value="1" class="form-control" />
	                        </div>
	                        <button class="btn btn-primary ms-1" type="submit">
	                            Thêm vào giỏ hàng
	                            <i class="fas fa-shopping-cart ms-1"></i>
	                        </button>
	                    </form>
	                </div>
	                <!--Content-->
	            </div>
	            <!--Grid column-->
	        </div>
	        <!--Grid row-->
	
	        <!-- <hr /> -->
	
	        <!--Grid row-->
<!-- 	        <div class="row d-flex justify-content-center">
	            Grid column
	            <div class="col-md-6 text-center">
	                <h4 class="my-4 h4">Additional information</h4>
	
	                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus suscipit modi sapiente illo soluta odit voluptates, quibusdam officia. Neque quibusdam quas a quis porro? Molestias illo neque eum in laborum.</p>
	            </div>
	            Grid column
	        </div> -->
	        <!--Grid row-->
	
	        <!--Grid row-->
<!-- 	        <div class="row">
	            Grid column
	            <div class="col-lg-4 col-md-12 mb-4">
	                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg" class="img-fluid" alt="" />
	            </div>
	            Grid column
	
	            Grid column
	            <div class="col-lg-4 col-md-6 mb-4">
	                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/12.jpg" class="img-fluid" alt="" />
	            </div>
	            Grid column
	
	            Grid column
	            <div class="col-lg-4 col-md-6 mb-4">
	                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg" class="img-fluid" alt="" />
	            </div>
	            Grid column
	        </div> -->
	        <!--Grid row-->
	    </div>
	</main>
	<!--Main layout-->
	
	<jsp:include page="Footer.jsp"></jsp:include>
    <!-- End your project here-->

    <!-- MDB -->
    <script type="text/javascript" src="js/mdb.umd.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
  </body>
</html>
