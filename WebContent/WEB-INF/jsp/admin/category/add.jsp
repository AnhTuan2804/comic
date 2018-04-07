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
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/category">Category</a></li>
        <li class="breadcrumb-item active">Add</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Create Category </div>
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
                    <form id="add-category" action="${pageContext.request.contextPath }/admin/category-add" method="post" >
                      <div class="form-group">
                      	<input type="text" id="cat_name" name="cat_name" placeholder="Enter name or category.." class="form-control">
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
		$('#add-category').validate({
			ignore: [],
			rules:{
				cat_name: {
					required: true,
				}, 
			},
			messages:{
				cat_name: {
					required: "Enter name category",
				}, 
			},
		});
	});
</script>
    