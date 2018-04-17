<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

			<div class="col-sm-8 col-sm-pull-4">
				
				<div class="col-sm-12">
					<div class="list-container" style="margin-top: 10px">
						<h2 class="listmanga-header">
							<i class="fa fa-bars"></i>"${listComicSearch.size() + (currentPage - 1)*8 }/${sumComic }"&nbsp; kết quả với từ khóa &nbsp;"${key }" 
						</h2>
						<div class="row">
						
						<c:forEach items="${listComicSearch }" var="comic">
							
							<div class="col-sm-6">
								<div class="media" style="margin-bottom: 20px;">
									<div class="media-left">
										<a
											href="${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}">
											<img style="width: 100px; height: 70px;"
											src='${pageContext.request.contextPath }/files/${comic.picture}'
											alt='${comic.picture }'>
										</a>
									</div>
									<div class="media-body">
										<h5 class="media-heading">
											<a
												href="${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}"
												class="chart-title"><strong>${ fn:toUpperCase(comic.comic_name) }</strong></a>
										</h5>
										<div>
											<a
												href="${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}"></a>
										</div>
										<small> <i class="fa fa-clock-o"></i> <fmt:formatDate value="${comic.lastChapUpdate}" pattern="HH:mm dd-MM-yyyy"/>
										</small> 
									</div>
								</div>
							</div>
							
							</c:forEach>
							</div>
							<div class="row">
							<div class="col-xs-12 text-center">
								<ul class="pagination">
									<c:forEach begin="1" end="${sumPage }" var="i">
										<c:choose>
											<c:when test="${currentPage == i }">
												<li class="active"><span>${i }</span></li>
											</c:when>
											<c:otherwise>
												<li><a href="${pageContext.request.contextPath}/search-${i}/key-${key}">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</ul>
							</div>
							
							
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12" style="padding: 0">
							<div class="ads-large" style="display: table; margin: 10px auto;">
							</div>
							<div style="display: table; margin: 10px auto 0;">
								<div class="pull-left ads-sqre1" style="margin-right: 10px;">
								</div>
								<div class="pull-right ads-sqre2"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	