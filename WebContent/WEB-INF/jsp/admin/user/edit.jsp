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
        <li class="breadcrumb-item active"> <a href="${pageContext.request.contextPath }/admin/user">User</a></li>
        <li class="breadcrumb-item active">Edit</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Edit User </div>
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
                    <form id="edit-user" action="${pageContext.request.contextPath }/admin/user-edit" method="post" >
                      <div class="form-group">
                      	<input type="text" id="username" name="username" value="${user.username }" placeholder="Enter username" class="form-control">
                      </div>
                      <div class="form-group">
                      	<input type="date" id="birthday" name="birthday" value="${user.birthday }" placeholder="Enter birthday" class="form-control">
                      </div>
                      <div class="form-group">
                      	<input type="password" id="password" name="password" placeholder="Enter password" class="form-control">
                      </div>
                      <div class="form-group">
                      	<input type="password" id="repassword" name="repassword" placeholder="Confirm password" class="form-control">
                      </div>
                      <div class="form-group">
                     	<select class="form-control" name="id_role">
                     		<c:forEach items="${listRole }" var="role">
                     			<c:if test="${role.name != 'ADMIN' }">
									<option <c:if test="${user.id_role == role.id }">selected='selected'</c:if> value="${role.id }">${role.name }</option>                     				
                     			</c:if>
                     		</c:forEach>
                     	</select>
                      </div>
                      <div class="form-group">
                      	<input type="hidden"name="user_id" value="${user.user_id }" class="form-control">
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
		$('#edit-user').validate({
			ignore: [],
			rules:{
				username: {
					required: true,
				}, 
				birthday: {
					required: true,
					date: true,
				}, 
				repassword: {
					equalTo: '#password',
				}, 
			},
			messages:{
				username: {
					required: "Enter username",
				}, 
				birthday: {
					required: "Enter birthday",
					date: "Date type invalid",
				}, 
				repassword: {
					equalTo: "Confirm password not equals",
				},  
			},
		});
	});
</script>
    