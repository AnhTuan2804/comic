<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



			
			
			
			<div class="col-sm-8 col-sm-pull-4">
                <div class="col-sm-12">
                    <div class="list-container" style="margin-top: 10px">
                        <h2 class="listmanga-header">
                            <i class="fa fa-bars"></i>${category.cat_name }
                        </h2>
                        <div class="row">
                        
                        	<c:forEach items="${listComicByIDCat }" var="comic">
                        		
                            <div class="col-sm-6">
                                <div class="media" style="margin-bottom: 20px;">
                                    <div class="media-left">
                                        <a href="${pageContext.request.contextPath }/detail/${comic.comic_name}/${comic.comic_id}">
                                            <img style="width: 100px; height: 70px;" src='${pageContext.request.contextPath }/files/${comic.picture}' alt='${comic.picture }'>
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <a href="${pageContext.request.contextPath }/detail/${comic.comic_name}/${comic.comic_id}" class="chart-title"><strong>${comic.comic_name }</strong></a>
                                        </h5>
                                        <small>
                                            <i class="fa fa-clock-o"></i> <fmt:formatDate value="${comic.create_at }" pattern="HH:mm dd-MM-yyyy"/> 
                                        </small>
                                        <br />
                                        <small>
                                            <i class="fa fa-eye"></i> ${comic.comic_view }
                                        </small>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            
                            
                            </div>
                            <div class="col-xs-12 text-center">
								<ul class="pagination">
									<c:forEach begin="1" end="${sumPage }" var="i">
										<c:choose>
											<c:when test="${currentPage == i }">
												<li class="active"><span>${i }</span></li>
											</c:when>
											<c:otherwise>
												<li><a href="${pageContext.request.contextPath }/category/${slugUtil.makeSlug(category.cat_name)}/${category.cat_id}/page-${i}">${i}</a></li>
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
                                <div class="pull-right ads-sqre2">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>