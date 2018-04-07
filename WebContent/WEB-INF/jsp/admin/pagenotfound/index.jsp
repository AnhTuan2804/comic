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
  <title>Page Not Found</title>
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath }/templates/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath }/templates/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath }/templates/admin/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="mx-auto mt-5">
      <div class="card-header">Page Not Found</div>
      <div class="card-body" style="background-image: url('${pageContext.request.contextPath }/templates/admin/images/pnf.png');height: 400px;">
         <h2 style="text-align: center; color: red;">
          	This page is not exist!
          </h2> 
          <div style="text-align: center;">
	          <a class="btn btn-primary" href="${pageContext.request.contextPath }/admin"><i class="fa fa-reply"></i>&nbsp;ADMIN</a>
	          <a class="btn btn-primary" href="${pageContext.request.contextPath }/"><i class="fa fa-home"></i>&nbsp;HOME PAGE</a>
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
