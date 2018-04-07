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
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/comic">Comic</a></li>
        <li class="breadcrumb-item active">Add</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Create Comic </div>
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
                    <form id="add-comic" action="${pageContext.request.contextPath }/admin/comic-add" method="post" enctype="multipart/form-data">
                    <div class="row">
                      <div class="form-group col-sm-7">
                      	<input type="text" id="comic_name" name="comic_name" value="${comic.comic_name }" placeholder="Enter name comic..." class="form-control">
                      </div>
                      <div class="form-group col-sm-5">
                      	<input type="number" id="age" name="age" value="${comic.age }" placeholder="Age of user that can read this comic..." class="form-control">
                      </div>
                    </div>
                      <div class="form-group">
                      	<input type="file" name="image" class="form-control">
                      </div>
                   
                      <div class="form-group">
                      	<textarea rows="4" name="comic_preview" id="editor" class="form-control ckeditor" placeholder="Enter preview of comic...">${comic.comic_preview }</textarea>
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
	var editor = CKEDITOR.replace('editor');
	CKFinder .setupCKEditor(editor,'${pageContext.request.contextPath}/templates/admin/ckfinder/');
	
	function CKupdate(){
       	for ( instance in CKEDITOR.instances )
          	CKEDITOR.instances[instance].updateElement();	
     };

  $(document).ready(function() {
		$('#add-comic').validate({
			ignore: [],
			rules:{
				comic_name: {
					required: true,
				}, 
				age: {
					required: true,
				}, 
				image: {
					required: true,
				}, 
				comic_preview: {
					required: true,
				}, 
			},
			messages:{
				comic_name: {
					required: "Enter name of comic",
				}, 
				age: {
					required: "Enter age of user",
				}, 
				image: {
					required: "Choose one image",
				}, 
				comic_preview: {
					required: "Enter preview of comic",
				},  
			},
		});
	});
</script>
    