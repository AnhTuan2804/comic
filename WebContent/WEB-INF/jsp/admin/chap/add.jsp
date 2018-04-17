<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/comic">Comic</a></li>
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/comic-${comic.comic_id }/chap">Chap</a></li>
        <li class="breadcrumb-item active">Add</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Create Chap For Comic: ${ fn:toUpperCase(comic.comic_name) } </div>
        <div class="card-body">
        <div class="col-sm-12">
      		<c:if test="${msg != null }">
      			<div class="alert  alert-success alert-dismissible fade show" role="alert">
			        <span class="badge badge-pill badge-success" style="align-content: center;"></span> ${msg }
			         	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			        <span aria-hidden="true">&times;</span>
		          		</button>
		      	</div>
        	</c:if>
	         <c:if test="${msg1 != null }">
	         	<div class="alert  alert-danger alert-dismissible fade show" role="alert">
	       			<span class="badge badge-pill badge-danger"></span> ${msg1 }
	          			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	              			<span aria-hidden="true">&times;</span>
	         			</button>
	     		</div>
	        </c:if>
		 </div>
          <div class="table-responsive">
		    <div class="card col-sm-12" style="margin: auto;">
                  <div class="card-body">
                    <form id="add-chap" action="${pageContext.request.contextPath }/admin/comic/chap-add" method="post" enctype="multipart/form-data">
                    <div class="row">
                      <div class="form-group col-sm-6">
                      	<input type="hidden" name="comic_id" value="${comic.comic_id }"  class="form-control">
                      </div>
                    </div>
                      <div class="form-group col-sm-6">
                      	<input type="file" name="image" multiple="multiple" class="form-control">
                      </div>
                      <button type="submit" class="btn btn-primary btn-sm">
	                      <i class="fa fa-dot-circle-o"></i> Create
	                    </button>
	                    <button type="reset" class="btn btn-danger btn-sm">
	                      <i class="fa fa-ban"></i> Reset
	                    </button>
                    </form>
                  </div>
                </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
<script type="text/javascript">

  $(document).ready(function() {
		$('#add-chap').validate({
			ignore: [],
			rules:{
				chap_num: {
					required: true,
				}, 
				image: {
					required: true,
				}, 
			},
			messages:{
				chap_num: {
					required: "Enter number of chap",
				},
				image: {
					required: "Choose image for chap",
				},
			},
		});
	});
</script>
    