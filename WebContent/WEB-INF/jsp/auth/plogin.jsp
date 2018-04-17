<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath }/templates/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath }/templates/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath }/templates/admin/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark" style="background-image: url('${pageContext.request.contextPath}/templates/public/images/bridges-in-night.jpg');">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Đăng nhập vào web đọc truyện ONLINE</div>
      <div class="card-body">
        <form action="${pageContext.request.contextPath }/public/login" method="post">
          <div class="form-group">
            <label for="">Tên Đăng Nhập</label>
            <input class="form-control" id="" type="text" name="username"  placeholder="Tên đăng nhập của bạn">
          </div>
          <div class="form-group">
            <label for="">Password</label>
            <input class="form-control" id="" type="password" name="password" placeholder="Mật khẩu của bạn">
          </div>
          <input class="btn btn-primary btn-block" value="Login" type="submit"/>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Register an Account</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath }/templates/admin/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/templates/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath }/templates/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
