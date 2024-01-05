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
    <link rel="stylesheet" href="../../css/mdb.min.css" />
    <link rel="stylesheet" href="../../css/Register_Login.css" />
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
              <h2 class="text-uppercase text-center mb-5">Thêm tài khoản mới</h2>

              <form action="../../edit-account-2" method="post">

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="account_username" required/>
                  <label class="form-label" for="form3Example1cg">Tên đăng nhập</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="password" id="form3Example4cg" class="form-control form-control-lg" name="account_password" required/>
                  <label class="form-label" for="form3Example4cg">Mật khẩu</label>
                </div>
                
                <div class="form-outline mb-4 row">
                	<p class="col-md-6">Quyền truy cập:</p>
                	
	                <div class="form-check col-md-3">
					  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="access_sell" value="Nhân viên"/>
					  <label class="form-check-label" for="inlineCheckbox1">Nhân viên</label>
					</div>
					
	                <div class="form-check col-md-3">
					  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="access_admin" value="Quản trị viên"/>
					  <label class="form-check-label" for="inlineCheckbox2">Quản trị viên</label>
					</div>
				</div>
                
                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Thêm tài khoản</button>
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
    <script type="text/javascript" src="../../js/mdb.umd.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
  </body>
</html>
    