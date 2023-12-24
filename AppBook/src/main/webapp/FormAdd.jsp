<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>My Book Store</title>
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
    <link rel="stylesheet" href="css/Register_Login.css" />
  </head>
  <body>
    <!-- Start your project here-->
    <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Thêm sách mới</h2>

              <form action="add-control-2" method="post">

				<h5 text-danger>${userExist}</h5>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="book_name" required/>
                  <label class="form-label" for="form3Example1cg">Tên sách</label>
                </div>
				
                <div class="form-outline mb-4">
				<select class="form-control" aria-label="Small select example" name="book_category">
				  <option selected value="Loại sách">Loại sách</option>
				  <c:forEach items="${iteamC}" var="x">
					  <option value="${x.category_id}">${x.category_name}</option>
				  </c:forEach>				    
				</select>
				</div>
				<div><b>${messNotSelectCate}</b></div>
                
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example4cg" class="form-control form-control-lg" name="book_author" required/>
                  <label class="form-label" for="form3Example4cg">Tác giả</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example4cg" class="form-control form-control-lg" name="book_image" required/>
                  <label class="form-label" for="form3Example4cg">Hình ảnh</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="number" id="form3Example4cg" class="form-control form-control-lg" name="book_price" required/>
                  <label class="form-label" for="form3Example4cg">Giá</label>
                </div>
                
                <div class="form-floating">
				  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="book_notes"></textarea>
				  <label for="floatingTextarea">Mô tả</label>
				</div>
                
                <div class="form-outlint mb-4 mt-4">
                <p>Trạng thái</p>
	                <div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="book_status" id="inlineRadio1" value="Còn hàng" checked>
					  <label class="form-check-label" for="inlineRadio1">Còn hàng</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="book_status" id="inlineRadio2" value="Hết hàng">
					  <label class="form-check-label" for="inlineRadio2">Hết hàng</label>
					</div>
				</div>

                <div class="form-outline mb-4">
                  <input type="number" id="form3Example4cdg" class="form-control form-control-lg" name="book_quantity" required/>
                  <label class="form-label" for="form3Example4cdg">Số lượng</label>
                </div>
                
                <h5 text-danger>${wrongRePass}</h5>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Thêm sách</button>
                </div>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <!-- End your project here-->

    <!-- MDB -->
    <script type="text/javascript" src="js/mdb.umd.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
  </body>
</html>
    