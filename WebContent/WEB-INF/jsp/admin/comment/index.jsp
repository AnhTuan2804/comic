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
        <li class="breadcrumb-item active">Comment</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> List Comment </div>
        <div class="card-body">
        
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID Comment</th>
                  <th>Username</th>
                  <th>Name Of Comic</th>
                  <th>Chap Number</th>
                  <th>Create At</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${listComment }" var="comment">
	                <tr>
	                  <td>${comment.cmt_id }</td>
	                  <td>${comment.username }</td>
	                  <td>${comment.comic }</td>
	                  <td>${comment.chap_num }</td>
	                  <td><fmt:formatDate value="${comment.create_at }" pattern="HH:mm dd-MM-yyyy"/></td>
	                  <td>
						<a href="${pageContext.request.contextPath }/admin/comment-${comment.cmt_id }"><i class="fa fa-remove"></i> </a>
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
	
    