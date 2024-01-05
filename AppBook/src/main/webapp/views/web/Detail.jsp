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
	                        <a href="filter-by-category?category_id=${book.book_category.category_id}">
	                            <span class="badge bg-dark me-1">${book.book_category.category_name}</span>
	                        </a>
	                        <!-- <a href="">
	                            <span class="badge bg-info me-1">New</span>
	                        </a>
	                        <a href="">
	                            <span class="badge bg-danger me-1">Bestseller</span>
	                        </a> -->
	                    </div>
	
						<div class="row">
		                    <p class="lead col-md" style="font-size: 20px;">
		                        <strong class="me-1">
		                            Giá: 
		                        </strong>
		                        <strong>${book.book_price}VND</strong>
		                    </p>
		                    
		                    <p class="lead col-md" style="font-size: 20px;">
		                        <strong class="me-1">
		                            Tác giả: 
		                        </strong>
		                        <strong>${book.book_author}</strong>
		                    </p>
						</div>
						
	                    <strong><p style="font-size: 20px;">Mô tả</p></strong>
	
	                    <div style="margin-bottom: 20px; white-space: pre-wrap; font-size: 16px; font-family: 'Roboto', sans-serif; width: 800px;">${book.book_notes}</div>
	                    
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
