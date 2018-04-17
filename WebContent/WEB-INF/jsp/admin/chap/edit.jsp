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
		    <div class="card col-sm-12">
                  <div class="card-body">
                    <div class="col-md-12">
		                 <div style="padding-bottom: 25px;" class="col-md-12">
		                 	<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus-circle"></i>&nbsp;Thêm hình ảnh nội dung chap</button>
		                 </div>
                           	<div class="modal fade" id="myModal" role="dialog">
							    <div class="modal-dialog">
							      <!-- Modal content-->
							      <div class="modal-content">
							        <div class="modal-header">
							        	<h2>Thêm nội dung chap</h2>
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							        </div>
							        <div class="modal-body">
							          <form action="${pageContext.request.contextPath}/admin/comic/chap-edit" method="post" enctype="multipart/form-data">
							          	<div class="form-group col-sm-12"><input class="form-control" type="file" name="image" multiple="multiple" /></div>
							          	<div class="form-group col-sm-12"><input class="form-control" type="hidden" name="chap_id" value="${chap.chap_id }"/></div>
							          	<div class="form-group col-sm-12"><input class="form-control" type="hidden" name="comic_id" value="${chap.comic_id }"/></div>
							          	<div class="form-group col-sm-12"><button style="float: right;" type="submit" class="btn btn-primary" >Thêm ảnh</button></div>
							          </form>
							        </div>
							      </div>
							    </div>
							</div>
			            </div>
	                        <div class="ajaxImage">
		                        <c:set var="count" value="1"></c:set>
		                        <c:forEach items="${listImageByIDChap }" var="picture">
		                       	<c:if test="${count % 2 == 1 }">
		                      	  <div class="col-md-12 row listImage">
		                       	</c:if>
									<div class="col-md-6">
					                        <div class="card">                            
					                            <div class="card-body">
													<a onclick="return delImage(${picture.img_id},${picture.chap_id})" href="javascript:void(0)">
														<small><span class="badge badge-danger float-right mt-1"><i class = "fa fa-remove"></i></span></small>
													</a>
					                                <img style="width: 390px; height: 260px;" class="rounded mx-auto d-block" src="${pageContext.request.contextPath }/files/${picture.img_name }" alt="${picture.img_name }">
					                            </div>
					                        </div>
					                    </div>
					              <c:if test="${count % 2 == 0 || listImageByIDChap.size() == count }">
					           		 </div>
					           	  </c:if>
					           	  <c:set var="count" value="${count + 1 }"></c:set>
					             </c:forEach>
				            </div>
                  </div>
                </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
<script type="text/javascript">
	function delImage(img_id,chap_id) {
		$.ajax({
			url : '${pageContext.request.contextPath }/admin/comic/chap-'+chap_id+'/del-img-'+img_id,
			type : 'POST',
			cache : false,
			data : {
			},
			success : function(data) {
				if(data == 'ERROR'){
					alert('Có lổi khi xóa ảnh!');
				}else{
					$(".ajaxImage").html(data);
				}
			},
			error : function() {
				alert('Có lổi khi xóa ảnh');
			}
		});
	}
</script>
    