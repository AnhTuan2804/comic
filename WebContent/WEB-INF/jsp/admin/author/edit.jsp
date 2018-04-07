<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/author">Author</a></li>
        <li class="breadcrumb-item active">Edit</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Edit Info Author </div>
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
		    <div class="card col-sm-6" style="margin: auto;">
                  <div class="card-body">
                    <form id="edit-author" action="${pageContext.request.contextPath }/admin/author-edit" method="post" >
                      <div class="form-group">
                      	<input type="text" id="auth_name" name="auth_name" value="${author.auth_name }" placeholder="Enter name author" class="form-control">
                      </div>
                      <div class="form-group">
                      	<textarea rows="4" id="auth_info" name="auth_info" class="form-control" placeholder="Enter infomation of author...">${author.auth_info }</textarea>
                      </div>
                      <div class="form-group">
                      	<input type="hidden"  name="auth_id" value="${author.auth_id}"  class="form-control">
                      </div>
                      <button type="submit" class="btn btn-primary btn-sm">
	                      <i class="fa fa-dot-circle-o"></i> Update
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
		$('#edit-author').validate({
			ignore: [],
			rules:{
				auth_name: {
					required: true,
				}, 
				auth_info: {
					required: true,
				}, 
			},
			messages:{
				auth_name: {
					required: "Enter author name",
				}, 
				auth_info: {
					required: "Enter author info",
				}, 
			},
		});
	});
</script>
    