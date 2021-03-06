<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="col-sm-4 col-sm-push-8">


				<div class="widget-container">

					<div class="alert alert-success">
						<div class="about">
							<h2>Read Comics Online</h2>
							<h6>Read DC and Marvel Comics Online for Free</h6>
							<p>Website to read DC and Marvel Comics Online for FREE. Read
								Comics Online for Free.</p>
						</div>
					</div>

				</div>
				<div class="widget-container">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">
								<strong>Most Viewed</strong>
							</h3>
						</div>
						<ul>
							<c:forEach items="${listMostViewed}" var="comic">
								<li class="list-group-item">
									<div class="media">
										<div class="media-left">
											<a href="${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}"> <img style="width: 75px; height: 50px;"
												src='${pageContext.request.contextPath }/files/${comic.picture}'
												alt='DC Comics Rebirth'>
											</a>
										</div>
										<div class="media-body">
											<h5 class="media-heading">
												<a href="${pageContext.request.contextPath }/detail/${slugUtil.makeSlug(comic.comic_name)}/${comic.comic_id}" class="chart-title"><strong>${fn:toUpperCase(comic.comic_name) }</strong></a>
											</h5>
											<i class="fa fa-eye"></i> ${comic.comic_view }
										</div>
									</div>
								</li>
							</c:forEach>
							
						</ul>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-12" style="padding: 0">
						<div style="display: table; margin: 10px auto;"></div>
						<div style="display: table; margin: 10px auto;"></div>
					</div>
				</div>
			</div>