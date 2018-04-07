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
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/comic-${chap.comic_id }/chap">Chap</a></li>
        <li class="breadcrumb-item active">Edit</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Edit Chap For Comic: ${ fn:toUpperCase(chap.comic_name) } </div>
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
                    <form id="edit-chap" action="${pageContext.request.contextPath }/admin/comic/chap-edit" method="post">
                    <div class="row">
                      <div class="form-group col-sm-6">
                      	<input type="number" id="comic_name" name="chap_num" value="${chap.chap_num }" placeholder="Enter number of chap..." class="form-control">
                      </div>
                      <div class="form-group col-sm-3">
                      	<input type="hidden" name="comic_id" value="${chap.comic_id }"  class="form-control">
                      </div>
                      <div class="form-group col-sm-3">
                      	<input type="hidden" name="chap_id" value="${chap.chap_id }"  class="form-control">
                      </div>
                    </div>
                   
                      <div class="form-group">
                      	<textarea rows="4" name="chap_content" id="editor" class="form-control ckeditor" placeholder="Enter content of chap...">${chap.chap_content }</textarea>
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
	var editor = CKEDITOR.replace('editor');
	CKFinder .setupCKEditor(editor,'${pageContext.request.contextPath}/templates/admin/ckfinder/');
	
	function CKupdate(){
       	for ( instance in CKEDITOR.instances )
          	CKEDITOR.instances[instance].updateElement();	
     };

  $(document).ready(function() {
		$('#edit-chap').validate({
			ignore: [],
			rules:{
				chap_num: {
					required: true,
				}, 
				chap_content: {
					required:function CKupdate(){
			          	CKEDITOR.instances.editor.updateElement();	
			    	 },
				}, 
			},
			messages:{
				chap_num: {
					required: "Enter number of chap",
				}, 
				chap_content: {
					required: "Enter content of chap",
				}, 
			},
		});
	});
</script>
    