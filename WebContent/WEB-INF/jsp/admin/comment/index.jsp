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
        <li class="breadcrumb-item active">Category</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> List Category </div>
        <div class="card-body">
        
          <div class="table-responsive">
	        <div>
	        	<a href="${pageContext.request.contextPath }/admin/category/add" class="btn btn-primary" style="width: 20%;" ><i class="fa fa-plus"></i></a>
	        </div>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID Category</th>
                  <th>Name of category</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${listCat }" var="cat">
	                <tr>
	                  <td>${cat.cat_id }</td>
	                  <td>${cat.cat_name }</td>
	                  <td>
						<a href="${pageContext.request.contextPath }/admin/category/edit/cid/${cat.cat_id }"><i class="fa fa-edit"></i> </a>
						<a href="${pageContext.request.contextPath }/admin/category/edit/cid/${cat.cat_id }"><i class="fa fa-remove"></i> </a>
					  </td>
	                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
	
    