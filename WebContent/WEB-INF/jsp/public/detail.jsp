<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



			
			
			<div class="col-sm-8 col-sm-pull-4">
                <div class="col-sm-12">
                    <div class="list-container" style="margin-top: 10px">
                        <h2 class="listmanga-header">
                            <i class="fa fa-bars"></i>${comic.comic_name } / ${chap.chap_num }
                        </h2>
                        
                        <div class="row">
                           <!--  <div class="col-sm-12">
                                <img class="col-sm-12" src="img/2.jpg">
                                <img class="col-sm-12" src="img/3.jpg">
                            </div> -->
                            
                            <div class="col-xs-12 text-center">
                            	<c:if test="${listChapByComic.size() > 0 }">
                                	<h4 style="text-align: center;">Danh sách chap</h4>
                                </c:if>
                                <ul class="pagination">
                                	<c:forEach items="${listChapByComic }" var="chap">
	                                    <!-- <li class="disabled"><span>&laquo;</span></li> -->
	                                    <c:choose>
	                                    	<c:when test="${objChap.chap_id == chap.chap_id }">
	                                    		<li class="active"><span>${chap.chap_num }</span></li>
	                                    	</c:when>
	                                    	<c:otherwise>
	                                    		<li><a href="${pageContext.request.contextPath }/detail-chap/${slugUtil.makeSlug(comic.comic_name)}-${comic.comic_id}/${chap.chap_id}">${chap.chap_num }</a></li>
	                                    	</c:otherwise>
	                                    </c:choose>
	                                    <!-- <li><a href="/latest-release?page=2" rel="next">&raquo;</a></li> -->
                                    </c:forEach>
                                </ul>
                            </div>
									
							<div class="slideshow-container col-sm-12">
								<%-- <p>${comic.comic_preview }</p> --%>
								<c:choose>
									<c:when test="${listImageByIDChap != null}">
										<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
										<c:set var="count" value="1"></c:set>
										<c:forEach items="${listImageByIDChap }" var="image">
											<div class="mySlides fade">
											  	<div class="col-sm-12">
											  		<img height="550px;" src="${pageContext.request.contextPath }/files/${image.img_name}" style="width:100%">
											  	</div>
											  <div class="numbertext">&nbsp;${count } / ${listImageByIDChap.size() }</div>
											  <div class="text"></div>
											</div>
										<c:set var="count" value="${count + 1 }"></c:set>
										</c:forEach>
											
										<a class="next" onclick="plusSlides(1)">&#10095;</a>
									</c:when>
									<c:otherwise>
										<p style="color: red;:text-align: center;">${comic.comic_preview }</p>
									</c:otherwise>
								</c:choose>
							</div>
							
							<c:if test="${objChap != null }">
							<div class="col-sm-12" style="padding-top: 50px;">
								<form action="javascript:void(0)" id="comment-fm">
									<div class="form-group input-group">
										<input id="cmt_content"  class="form-control col-sm-10" type="text" 
											placeholder="#Ý kiến của bạn thế nào về chương này?" style="border-radius: 0; background-color: #282828; color: white;" />
										<input type="hidden" value="${objChap.chap_id }" id="chap_id" />
										<input type="hidden" value="${comic.comic_id }" id="comic_id" />
										<div class="input-group-btn">
										 <input class=" form-control" onclick="return ajaxComment()" type="submit" value="Gửi">
										 </div>
									</div>
								</form>
							</div>
							<div class="col-sm-12" style="padding-top: 25px;">
								<ul style="list-style: none;" class="comment">
									<c:forEach items="${listCommentByChap }" var="comment">
										<li style="padding-bottom: 15px;">
											<div class="row">
												<div class="col-sm-1">
													<img width="35px;" alt="" src="${pageContext.request.contextPath}/templates/public/images/comment.jpg">
												</div>
												<div class="col-sm-11">
													<p>${comment.username } -- <i class="fa fa-clock-o">&nbsp;&nbsp; <fmt:formatDate value="${comment.create_at }" pattern="HH:mm dd-MM-yyyy"/> </i></p>
													<p>${comment.cmt_content }</p>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							</c:if>
							

                        </div><!-- aaâ -->
                    </div>

                    <div class="row">
                        <div class="col-xs-12" style="padding: 0">
                            <div class="ads-large" style="display: table; margin: 10px auto;">
                            </div>
                            <div style="display: table; margin: 10px auto 0;">
                                <div class="pull-left ads-sqre1" style="margin-right: 10px;">
                                </div>
                                <div class="pull-right ads-sqre2">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<script>
	var slideIndex = 1;
	showSlides(slideIndex);
	
	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}
	
	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}
	
	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  if (n > slides.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";  
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += " active";
	}
	
	
	
	function ajaxComment() {
			$.ajax({
				url : '${pageContext.request.contextPath}/chap/comment',
				type : 'POST',
				cache : false,
				data : {
					cmt_content: $('#cmt_content').val(),
					chap_id: $('#chap_id').val(),
					comic_id: $('#comic_id').val(),
				},
				success : function(data) {
					switch (data) {
					case 'LOGIN':
						$('#cmt_content').val('');
						alert('Bạn cần đăng nhập để bình luận');
						break;
					case 'EMPTY':
						$('#cmt_content').val('');
						break;
					case 'ERROR':
						alert('Có sự cố mạng');
						break;
					default:
						$('#cmt_content').val('');
						$('.comment').html(data);
						break;
					}
				},
				error : function() {
					
				}
			});
		}
	</script>

	