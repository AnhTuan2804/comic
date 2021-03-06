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
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/comic-category">Comic Category</a></li>
        <li class="breadcrumb-item active">Add</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Edit Comic Category </div>
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
                    <form id="add-category" action="${pageContext.request.contextPath }/admin/comic-category-edit" method="post" >
                      <div class="form-group">
                     	<select name="id_cat" class="form-control">
                     		<c:forEach items="${listCategory }" var="cat">
                     			<option <c:if test="${cat.cat_id == comicCategory.id_cat }">selected='selected'</c:if> value="${cat.cat_id }">${cat.cat_name }</option>
                     		</c:forEach>
                     	</select>
                      </div>
                       <div class="form-group">
                     	<select name="id_comic" class="form-control">
                     		<c:forEach items="${listComic }" var="comic">
                     			<option <c:if test="${comic.comic_id == comicCategory.id_comic }">selected='selected'</c:if> value="${comic.comic_id }">${comic.comic_name }</option>
                     		</c:forEach>
                     	</select>
                      </div>
                      <div class="form-group">
                     	<input type="hidden" value="${comicCategory.id }" name="id"  class="form-control"/>
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
