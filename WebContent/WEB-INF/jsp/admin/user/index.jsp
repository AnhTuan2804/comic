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
        <li class="breadcrumb-item active">User</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>&nbsp;List User
          	<c:if test="${userInfo.name_role == 'ADMIN' }">
          		<a href="${pageContext.request.contextPath }/admin/user-add" class="btn btn-primary" ><i class="fa fa-plus"></i></a>
       		</c:if>
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
                  <th>ID User</th>
                  <th>Username</th>
                  <th>Day Of Birthday</th>
                  <th>Role</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${listUser }" var="user">
	                <tr>
	                  <td>${user.user_id }</td>
	                  <td>${user.username}</td>
	                  <td>${user.birthday}</td>
	                  <td>${user.name_role}</td>
	                  <td>
	                  	<c:if test="${userInfo.name_role == 'ADMIN' }">
	                  		<c:choose>
	                  			<c:when test="${name_role == 'ADMIN' }">
	                  				<a href="${pageContext.request.contextPath }/admin/user-edit/${user.user_id }">Edit&nbsp;<i class="fa fa-edit"></i> </a>
	                  			</c:when>
	                  			<c:otherwise>
	                  				<a href="${pageContext.request.contextPath }/admin/user-edit/${user.user_id }">Edit&nbsp;<i class="fa fa-edit"></i> </a>
									<a onclick="return confirm('Are you sure delete?')" href="${pageContext.request.contextPath }/admin/user-del/${user.user_id }">Delete&nbsp;<i class="fa fa-remove"></i> </a>
	                  			</c:otherwise>
	                  		</c:choose>
	                  	</c:if>
	                  	<c:if test="${userInfo.name_role == 'QUANLY' }">
	                  		<c:if test="${userInfo.user_id == user.user_id }">
	                  			<a href="${pageContext.request.contextPath }/admin/user-edit/${user.user_id }">Edit&nbsp;<i class="fa fa-edit"></i> </a>
	                  		</c:if>
	                  	</c:if>
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
	
    