<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/templates/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>${title }</title>
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath }/templates/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath }/templates/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="${pageContext.request.contextPath }/templates/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath }/templates/admin/css/sb-admin.css" rel="stylesheet">
  <script
	src="${pageContext.request.contextPath }/templates/admin/js/jquery.min.js"></script>
	<script
	src="${pageContext.request.contextPath }/templates/admin/js/jquery.validate.js"></script>
	<script
	src="${pageContext.request.contextPath }/templates/admin/ckeditor/ckeditor.js"></script>
	<script
	src="${pageContext.request.contextPath }/templates/admin/ckfinder/ckfinder.js"></script>
	<style type="text/css">
		.error{
			font-style: italic;
			color: red;
		}
	</style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  