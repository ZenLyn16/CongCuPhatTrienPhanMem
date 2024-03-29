<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Quản lý danh mục</title>
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
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
  </head>
  <body>
    <!-- Start your project here-->
    <div class="container">
    	<div class="row">
    		<div class="col-md-10 mt-2">
			    <h1>Quản lý Danh Mục sản phẩm</h1>
    		</div>	
    		<div class="col-md-2 mt-4">
		    	<a class="btn btn-primary" href="list-books"><i class="fa-solid fa-house"></i> Trang chủ</a>
		    </div>
    	</div>
	    <hr>
	    
	    <button class="btn btn-primary mb-3" data-mdb-ripple-init data-mdb-modal-init data-mdb-target="#add">
			Thêm danh mục	
		</button>
	    
	    <div class="card">
	    <div class="card-body">
	    <table class="table table-sm table-striped">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Tên Danh Mục</th>
		      <th scope="col">Số lượng</th>
		      <th scope="col">Hành động</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  <c:forEach items="${itemsC}" var="x">
		    <tr> 
		      <th scope="row">${x.category_id}</th>
		      <td>${x.category_name}</td>
		      <td>${x.category_quantity}</td>
		      <td>
		      	<a href="edit-book?book_id=${x.category_id}" class="btn btn-secondary" data-mdb-ripple-init>
  					<i class="fa-solid fa-pen-to-square"></i>
				</a> 
		      	<button class="btn btn-danger" data-mdb-ripple-init data-mdb-modal-init data-mdb-target="#del${x.category_id}">
  					<i class="fa-solid fa-trash-can"></i>	
				</button>
		      </td>
		    </tr>
		    
		    <!-- Modal Del -->
			<div class="modal fade modal-lg" id="del${x.category_id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header bg-danger text-white">
			        <h5 class="modal-title" id="exampleModalLabel"><i class="fa-solid fa-triangle-exclamation"></i> Xóa Danh mục</h5>
			        <button type="button" class="btn-close" data-mdb-ripple-init data-mdb-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			      	Bạn có thực sự muốn xóa <b>${x.category_name}?</b>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-mdb-ripple-init data-mdb-dismiss="modal"><i class="fa-solid fa-x me-1"></i> Close</button>
			        <a href="delete-book?book_id=${x.category_id}" class="btn btn-danger" data-mdb-ripple-init><i class="fa-solid fa-trash-can me-1"></i>Delete</a>
			      </div>
			    </div>
			  </div>
			</div>
			
		    <!-- Modal Create -->
<!-- 			<div class="modal fade modal-lg" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header bg-danger text-white">
			        <h5 class="modal-title" id="exampleModalLabel">Thêm Danh mục</h5>
			        <button type="button" class="btn-close" data-mdb-ripple-init data-mdb-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
					  category id input
					  <div data-mdb-input-init class="form-outline mb-4">
					    <input type="text" id="category_id" class="form-control" name="idcat"/>
					    <label class="form-label" for="category_id">Mã danh mục</label>
					  </div>					
					  category name input
					  <div data-mdb-input-init class="form-outline mb-4">
					    <input type="text" id="category_name" class="form-control" name="namecat"/>
					    <label class="form-label" for="category_name">Tên danh mục</label>
					  </div>					
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-mdb-ripple-init data-mdb-dismiss="modal">Đóng</button>
			        <a href="add-category" class="btn btn-danger" data-mdb-ripple-init>Thêm</a>
			      </div>
			    </div>
			  </div>
			</div> -->
		    
		  </c:forEach>
		    
		  </tbody>
		</table>
    </div>
    </div>
    
    <hr>
    
    <%
    	ArrayList<Category> items = (ArrayList<Category>) request.getAttribute("itemsC");
	    StringBuilder ids = new StringBuilder();
		StringBuilder names = new StringBuilder();
		for (Category item : items) {
			ids.append(item.getCategory_quantity());
			names.append("'"+item.getCategory_name()+"'");
			if(items.indexOf(item)<items.size()-1) {
				ids.append(",");
				names.append(",");
			}	
		}
	%>
    
    <div id="chart">
    <script>
       var options = {
          series: [{
          data: [<%=ids%>]
        }],
          chart: {
            type: 'bar',
          height: 350
        },
        plotOptions: {
          bar: {
            borderRadius: 4,
            horizontal: true,
          }
        },
        dataLabels: {
          enabled: false
        },
        xaxis: {
          categories: [<%=names%>],
        }
        };
        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
    </script>
  </div>
    </div>
    
    <!-- End your project here-->

    <!-- MDB -->
    <script type="text/javascript" src="js/mdb.umd.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
  </body>
</html>