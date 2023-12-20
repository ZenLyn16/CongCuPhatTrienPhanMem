<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Material Design for Bootstrap</title>
    <!-- MDB icon -->
    <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
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
    <div class="wrap-contact100">
    <div class="row">
    <div class="mx-auto col-12 col-md-8 col-lg-6">
    
    <h1 class="text-center">Thêm sản phẩm mới</h1>
    <hr>
    <div class="container-contact100">
    <form class="text contact100-form">
	  <!-- Name input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <input type="text" id="form4Example1" class="form-control" />
	    <label class="form-label" for="form4Example1">Tên sách</label>
	  </div>
	
	  <!-- Author input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <input type="text" id="form4Example2" class="form-control" />
	    <label class="form-label" for="form4Example2">Tác giả</label>
	  </div>
	  <!-- Image input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <input type="file" id="form4Example2" class="form-control" />
	    <!-- <label class="form-label" for="form4Example2">Hình ảnh</label> -->
	  </div>
	  <!-- Price input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <input type="number" id="form4Example2" class="form-control" />
	    <label class="form-label" for="form4Example2">Giá bán</label>
	  </div>
	  <!-- Original price input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <input type="number" id="form4Example2" class="form-control" />
	    <label class="form-label" for="form4Example2">Giá gốc</label>
	  </div>
	  <!-- Discount price input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <input type="number" id="form4Example2" class="form-control" />
	    <label class="form-label" for="form4Example2">Giảm giá</label>
	  </div>
	  
	  <!-- Status input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <input type="text" id="form4Example2" class="form-control" />
	    <label class="form-label" for="form4Example2">Trạng thái</label>
	  </div>
	
	  <!-- Notes input -->
	  <div data-mdb-input-init class="form-outline mb-4">
	    <textarea class="form-control" id="form4Example3" rows="4"></textarea>
	    <label class="form-label" for="form4Example3">Ghi chú</label>
	  </div>
	
	  <!-- Checkbox -->
	  <div class="form-check d-flex justify-content-center mb-4">
	    <input
	      class="form-check-input me-2"
	      type="checkbox"
	      value=""
	      id="form4Example4"
	      checked
	    />
	    <label class="form-check-label" for="form4Example4">
	      Send me a copy of this message
	    </label>
	  </div>
	
	  <!-- Submit button -->
	  <button data-mdb-ripple-init type="button" class="btn btn-primary">Tạo</button>
	</form>
	</div>
	</div>
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
    