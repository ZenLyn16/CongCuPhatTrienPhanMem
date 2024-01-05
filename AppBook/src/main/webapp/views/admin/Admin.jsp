<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Quản lý sản phẩm</title>
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
  </head>
  <body>
    <!-- Start your project here-->
    <div class="container">
    	<div class="row">
    		<div class="col-md-10 mt-2">
			    <h1>Quản lý Sản phẩm</h1>
    		</div>	
    		<div class="col-md-2 mt-4">
		    	<a class="btn btn-primary" href="list-books"><i class="fa-solid fa-house"></i> Trang chủ</a>
		    </div>
    	</div>
    	
	    <hr>
	    
	    <a href="add-control" class="btn btn-primary mb-3" data-mdb-ripple-init>Thêm sách</a>
	    
	    <div class="card">
	    <div class="card-body">
	    <table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Tên sách</th>
		      <th scope="col">Thể loại</th>
		      <th scope="col">Tác giả</th>
		      <th scope="col">Ảnh</th>
		      <th scope="col">Giá</th>
		      <th scope="col">Số lượng</th>
		      <th scope="col">Thực hiện</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  <c:forEach items="${items}" var="x">
		    <tr> 
		      <th scope="row">${x.book_id}</th>
		      <td>${x.book_name}</td>
		      <td>${x.book_category.category_name}</td>
		      <td>${x.book_author}</td>
		      <td><img class="w-50 h-50" src="${x.book_image}" alt="Ảnh sách"/></td>
		      <td>${x.book_price}</td>
		      <td>${x.book_quantity}</td>
		      <td>
		      	<a href="edit-book?book_id=${x.book_id}" class="btn btn-secondary" data-mdb-ripple-init>
  					<i class="fa-solid fa-pen-to-square"></i>
				</a> 
		      	<button class="btn btn-danger" data-mdb-ripple-init data-mdb-modal-init data-mdb-target="#del${x.book_id}">
  					<i class="fa-solid fa-trash-can"></i>	
				</button>
		      </td>
		    </tr>
		    
		    <!-- Modal -->
			<div class="modal fade modal-lg" id="del${x.book_id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header bg-danger text-white">
			        <h5 class="modal-title" id="exampleModalLabel"><i class="fa-solid fa-triangle-exclamation"></i> Xóa sản phẩm</h5>
			        <button type="button" class="btn-close" data-mdb-ripple-init data-mdb-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			      	Bạn có thực sự muốn xóa <b>${x.book_name}?</b>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-mdb-ripple-init data-mdb-dismiss="modal"><i class="fa-solid fa-x me-1"></i> Close</button>
			        <a href="delete-book?book_id=${x.book_id}" class="btn btn-danger" data-mdb-ripple-init><i class="fa-solid fa-trash-can me-1"></i>Delete</a>
			      </div>
			    </div>
			  </div>
			</div>
		    
		  </c:forEach>
		    
		  </tbody>
		</table>
    </div>
    </div>
    </div>
    
    <!-- End your project here-->

    <!-- MDB -->
    <script type="text/javascript" src="js/mdb.umd.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
  </body>
</html>