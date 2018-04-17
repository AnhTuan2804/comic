<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

			<div class="col-sm-8 col-sm-pull-4">
				<div class="col-sm-12">
					<div class="list-container">
						<h2 class="listmanga-header">
							<i class="fa fa-star"></i>Hot Comic Updates <span> <a
								class="prev" id="schedule-prev" href="#">&lsaquo;</a> <a
								class="next" id="schedule-next" href="#">&rsaquo;</a>
							</span>
						</h2>
						<div class="carousel">
							<ul id="schedule">
								<c:forEach items="${listHostComicUpdate }" var="comic">
									
								<li class="schedule-item clearfix">
									<div class="schedule-right">
										<div class="schedule-avatar">
											<a href="${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}"> <img
												style="height: 200px;" src='${pageContext.request.contextPath }/files/${comic.picture}'
												alt='The Flash (2016-)' />
											</a>
										</div>
										<div class="schedule-name">
											<a href="${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}">${ fn:toUpperCase(comic.comic_name) }</a>
										</div>
										<div class="schedule-date">
											<a class="schedule-add" href='${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}'>
												#${comic.comic_comment } </a>
										</div>
									</div>
								</li>
								
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<script type="text/rocketscript">

                    function scheduleInit() { $('#schedule').carouFredSel({ swipe: { onTouch: true }, prev: '#schedule-prev', next: "#schedule-next", auto: { play: true, timeoutDuration: 5000 }, scroll: { pauseOnHover: true, items: 1, duration: 500, easing: 'swing' } }); } scheduleInit(); $(window).resize(function () { scheduleInit(); });
                </script>
				<div class="col-sm-12">
					<div class="list-container" style="margin-top: 10px">
						<h2 class="listmanga-header">
							<i class="fa fa-bars"></i>Latest Comic Updates
						</h2>
						<div class="row">
						
						<c:forEach items="${listLastComicUpdate }" var="comic">
							
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
												<li><a href="${pageContext.request.contextPath}/page-${i}">${i}</a></li>
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

	