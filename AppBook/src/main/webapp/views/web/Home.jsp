<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
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
    <!-- Button pagging -->
    <link
      rel="stylesheet"
      href="css/pagingButton.css"
    />
    <!-- MDB -->
    <link rel="stylesheet" href="css/mdb.min.css" />
    <link rel="stylesheet" href="css/index.css" />
  </head>
  
  
  
  <body>
    <!-- Start your project here-->
	<jsp:include page="Header.jsp"></jsp:include>	
	
	<!-- carousel -->
	<div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-mdb-ride="carousel">
	  <div class="carousel-indicators">
	    <button
	      type="button"
	      data-mdb-target="#carouselExampleCaptions"
	      data-mdb-slide-to="0"
	      class="active"
	      aria-current="true"
	      aria-label="Slide 1"
	    ></button>
	    <button
	      type="button"
	      data-mdb-target="#carouselExampleCaptions"
	      data-mdb-slide-to="1"
	      aria-label="Slide 2"
	    ></button>
	    <button
	      type="button"
	      data-mdb-target="#carouselExampleCaptions"
	      data-mdb-slide-to="2"
	      aria-label="Slide 3"
	    ></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%282%29.jpg" class="d-block w-100" alt="Wild Landscape"/>
	      <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
	      <div class="carousel-caption d-none d-sm-block mb-5">
	        <h1 class="mb-4">
	                <strong>My Book Store</strong>
	              </h1>
	
	              <p>
	                <strong>Những cuốn sách hay nhất</strong>
	              </p>
	
	              <p class="mb-4 d-none d-md-block">
	                <strong>Đáp ứng đầy đủ mọi thể loại sách bạn mong muốn.</strong>
	              </p>
	
	              <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Let's get started
	                <i class="fas fa-graduation-cap ms-2"></i>
	              </a>
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg" class="d-block w-100" alt="Camera"/>
	      <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
	      <div class="carousel-caption d-none d-md-block mb-5">
	        <h1 class="mb-4">
	                <strong>Learn Bootstrap 5 with MDB</strong>
	              </h1>
	
	              <p>
	                <strong>Best & free guide of responsive web design</strong>
	              </p>
	
	              <p class="mb-4 d-none d-md-block">
	                <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
	                  available. Create your own, stunning website.</strong>
	              </p>
	
	              <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
	                <i class="fas fa-graduation-cap ms-2"></i>
	              </a>
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg" class="d-block w-100" alt="Exotic Fruits"/>
	      <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
	      <div class="carousel-caption d-none d-md-block mb-5">
	        <h1 class="mb-4">
	                <strong>Learn Bootstrap 5 with MDB</strong>
	              </h1>
	
	              <p>
	                <strong>Best & free guide of responsive web design</strong>
	              </p>
	
	              <p class="mb-4 d-none d-md-block">
	                <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
	                  available. Create your own, stunning website.</strong>
	              </p>
	
	              <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
	                <i class="fas fa-graduation-cap ms-2"></i>
	              </a>
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	
	 <!--Main layout-->
	<main>
	<div class="container">
	<jsp:include page="Menu.jsp"></jsp:include>
	
	<!-- Products -->
	  <section>
	  <div class="text-center">
	    <div class="row">
	      
	      <c:forEach items="${items}" var="x">
	      <div class="col-lg-3 col-md-6 mb-4">
	        <div class="card h-100">
	          <div class="h-100 bg-image hover-zoom ripple ripple-surface ripple-surface-light"
	            data-mdb-ripple-color="light">
	            <img src="${x.book_image}" class="w-100" />
	            <a href="load-by-id?book_id=${x.book_id}">
	              <div class="mask">
	                <div class="d-flex justify-content-start align-items-end h-100">
	                  
	                </div>
	              </div>
	              <div class="hover-overlay">
	                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
	              </div>
	            </a>
	          </div>
	          <div class="card-body">
	            <a href="load-by-id?book_id=${x.book_id}" class="text-reset">
	              <h5 class="card-title mb-2">${x.book_name}</h5>
	            </a>
	            <a href="#" class="text-reset">
	              <p>${x.book_author}</p>
	            </a>
	            <h6 class="mb-3 price">${x.book_price}VND</h6>
	          </div>
	        </div>
	      </div>
	      </c:forEach>
	
	    </div>
	  </div> 
	</section>
	  
	<!-- Pagination -->
	  <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
	  <ul class="pagination">
	  	<c:if test="${tag > 1}">
		    <li class="page-item">
		      <a class="page-link" href="list-books?index=${tag - 1}" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
	  	</c:if>
	    
	    <c:forEach begin="1" end="${endP}" var="x">
	    	<li class="page-item"><a class="page-link ${tag == x ? "active" : ""}" href="list-books?index=${x}">${x}</a></li>
	    </c:forEach>
	    
	    <c:if test="${tag < endP}">
		    <li class="page-item">
		      <a class="page-link" href="list-books?index=${tag + 1}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
	    </c:if>
	  </ul>
	</nav>  
	<!-- Pagination -->  
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
