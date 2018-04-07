<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
          <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="${pageContext.request.contextPath }/admin">Dashboard</a>
        </li>
        <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath }/admin/author">Author</a></li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>&nbsp;List author
          	<a href="${pageContext.request.contextPath }/admin/author-add" class="btn btn-primary" ><i class="fa fa-plus"></i></a>
          	</div>
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
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID Author</th>
                  <th>Name Of Author</th>
                  <th>Info Of Author</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${listAuthor }" var="author">
	                <tr>
	                  <td>${author.auth_id }</td>
	                  <td>${author.auth_name}</td>
	                  <td>${author.auth_info}</td>
	                  <td>
	                  	<a href="${pageContext.request.contextPath }/admin/author-edit/${author.auth_id }">Edit&nbsp;<i class="fa fa-edit"></i> </a>
						<a onclick="return confirm('Are you sure delete?')" href="${pageContext.request.contextPath }/admin/author-del/${author.auth_id }">Delete&nbsp;<i class="fa fa-remove"></i> </a>
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
	
    