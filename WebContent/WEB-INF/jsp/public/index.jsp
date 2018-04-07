<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



			
			
			
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
								<li class="schedule-item clearfix">
									<div class="schedule-right">
										<div class="schedule-avatar">
											<a href='/comic/the-flash-2016/41'> <img
												src='${pageContext.request.contextPath }/templates/public/uploads/manga/the-flash-2016/cover/cover_250x350.jpg'
												alt='The Flash (2016-)' />
											</a>
										</div>
										<div class="schedule-name">
											<a href="/comic/the-flash-2016">The Flash (2016-)</a>
										</div>
										<div class="schedule-date">
											<a class="schedule-add" href='/comic/the-flash-2016/41'>
												#41 </a>
										</div>
									</div>
								</li>
								<li class="schedule-item clearfix">
									<div class="schedule-right">
										<div class="schedule-avatar">
											<a href='/comic/justice-league-of-america-2017/25'> <img
												src='${pageContext.request.contextPath }/templates/public/uploads/manga/justice-league-of-america-2017/cover/cover_250x350.jpg'
												alt='Justice League of America (2017-)' />
											</a>
										</div>
										<div class="schedule-name">
											<a href="/comic/justice-league-of-america-2017">Justice
												League of America (2017-)</a>
										</div>
										<div class="schedule-date">
											<a class="schedule-add"
												href='/comic/justice-league-of-america-2017/25'> #25 </a>
										</div>
									</div>
								</li>
								<li class="schedule-item clearfix">
									<div class="schedule-right">
										<div class="schedule-avatar">
											<a href='/comic/detective-comics-2016/975'> <img
												src='${pageContext.request.contextPath }/templates/public/uploads/manga/detective-comics-2016/cover/cover_250x350.jpg'
												alt='Detective Comics (2016-)' />
											</a>
										</div>
										<div class="schedule-name">
											<a href="/comic/detective-comics-2016">Detective Comics
												(2016-)</a>
										</div>
										<div class="schedule-date">
											<a class="schedule-add"
												href='/comic/detective-comics-2016/975'> #975 </a>
										</div>
									</div>
								</li>
								<li class="schedule-item clearfix">
									<div class="schedule-right">
										<div class="schedule-avatar">
											<a href='/comic/action-comics-2016/998'> <img
												src='${pageContext.request.contextPath }/templates/public/uploads/manga/action-comics-2016/cover/cover_250x350.jpg'
												alt='Action Comics (2016-)' />
											</a>
										</div>
										<div class="schedule-name">
											<a href="/comic/action-comics-2016">Action Comics (2016-)</a>
										</div>
										<div class="schedule-date">
											<a class="schedule-add" href='/comic/action-comics-2016/998'>
												#998 </a>
										</div>
									</div>
								</li>
								<li class="schedule-item clearfix">
									<div class="schedule-right">
										<div class="schedule-avatar">
											<a href='/comic/injustice-2-2017/47'> <img
												src='${pageContext.request.contextPath }/templates/public/uploads/manga/injustice-2-2017/cover/cover_250x350.jpg'
												alt='Injustice 2 (2017-)' />
											</a>
										</div>
										<div class="schedule-name">
											<a href="/comic/injustice-2-2017">Injustice 2 (2017-)</a>
										</div>
										<div class="schedule-date">
											<a class="schedule-add" href='/comic/injustice-2-2017/47'>
												#47 </a>
										</div>
									</div>
								</li>
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
							<div class="col-sm-6">
								<div class="media" style="margin-bottom: 20px;">
									<div class="media-left">
										<a
											href="/comic/the-tremendous-trump-retromastered-edition-2018">
											<img width="100"
											src='${pageContext.request.contextPath }/templates/public/uploads/manga/the-tremendous-trump-retromastered-edition-2018/cover/cover_250x350.jpg'
											alt='The Tremendous Trump: Retromastered Edition (2018)'>
										</a>
									</div>
									<div class="media-body">
										<h5 class="media-heading">
											<a
												href="/comic/the-tremendous-trump-retromastered-edition-2018"
												class="chart-title"><strong>The Tremendous
													Trump: Retromastered Edition (2018)</strong></a>
										</h5>
										<div>
											<a
												href="/comic/the-tremendous-trump-retromastered-edition-2018/1">#1</a>
										</div>
										<small> <i class="fa fa-clock-o"></i> 28 Feb. 2018
										</small> <br />
										<div class="readOnly-1543" style="display: inline-block;"></div>
										<script type="text/rocketscript">$('.readOnly-1543').raty({path: "/packages/escapeboy/jraty/raty/lib/img", readOnly: true, score: "2.33"});</script>
										<br /> <small> <i class="fa fa-eye"></i> 241
										</small>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media" style="margin-bottom: 20px;">
									<div class="media-left">
										<a href="/comic/wonder-woman-2016"> <img width="100"
											src='${pageContext.request.contextPath }/templates/public/uploads/manga/wonder-woman-2016/cover/cover_250x350.jpg'
											alt='Wonder Woman (2016-)'>
										</a>
									</div>
									<div class="media-body">
										<h5 class="media-heading">
											<a href="/comic/wonder-woman-2016" class="chart-title"><strong>Wonder
													Woman (2016-)</strong></a>
										</h5>
										<div>
											<a href="/comic/wonder-woman-2016/41">#41</a>
										</div>
										<small> <i class="fa fa-clock-o"></i> 28 Feb. 2018
										</small> <br />
										<div class="readOnly-10" style="display: inline-block;"></div>
										<script type="text/rocketscript">$('.readOnly-10').raty({path: "/packages/escapeboy/jraty/raty/lib/img", readOnly: true, score: "5"});</script>
										<br /> <small> <i class="fa fa-eye"></i> 28054
										</small>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media" style="margin-bottom: 20px;">
									<div class="media-left">
										<a href="/comic/the-flash-2016"> <img width="100"
											src='${pageContext.request.contextPath }/templates/public/uploads/manga/the-flash-2016/cover/cover_250x350.jpg'
											alt='The Flash (2016-)'>
										</a>
									</div>
									<div class="media-body">
										<h5 class="media-heading">
											<a href="/comic/the-flash-2016" class="chart-title"><strong>The
													Flash (2016-)</strong></a> <small class="label label-danger"
												style="font-size: 10px; margin-left: 10px;">hot</small>
										</h5>
										<div>
											<a href="/comic/the-flash-2016/41">#41</a>
										</div>
										<small> <i class="fa fa-clock-o"></i> 28 Feb. 2018
										</small> <br />
										<div class="readOnly-16" style="display: inline-block;"></div>
										<script type="text/rocketscript">$('.readOnly-16').raty({path: "/packages/escapeboy/jraty/raty/lib/img", readOnly: true, score: "4.53"});</script>
										<br /> <small> <i class="fa fa-eye"></i> 121099
										</small>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media" style="margin-bottom: 20px;">
									<div class="media-left">
										<a href="/comic/teen-titans-2016"> <img width="100"
											src='${pageContext.request.contextPath }/templates/public/uploads/manga/teen-titans-2016/cover/cover_250x350.jpg'
											alt='Teen Titans (2016-)'>
										</a>
									</div>
									<div class="media-body">
										<h5 class="media-heading">
											<a href="/comic/teen-titans-2016" class="chart-title"><strong>Teen
													Titans (2016-)</strong></a>
										</h5>
										<div>
											<a href="/comic/teen-titans-2016/17">#17</a>
										</div>
										<small> <i class="fa fa-clock-o"></i> 28 Feb. 2018
										</small> <br />
										<div class="readOnly-22" style="display: inline-block;"></div>
										<script type="text/rocketscript">$('.readOnly-22').raty({path: "/packages/escapeboy/jraty/raty/lib/img", readOnly: true, score: "4.24"});</script>
										<br /> <small> <i class="fa fa-eye"></i> 51386
										</small>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media" style="margin-bottom: 20px;">
									<div class="media-left">
										<a href="/comic/suicide-squad-2016"> <img width="100"
											src='${pageContext.request.contextPath }/templates/public/uploads/manga/suicide-squad-2016/cover/cover_250x350.jpg'
											alt='Suicide Squad (2016-)'>
										</a>
									</div>
									<div class="media-body">
										<h5 class="media-heading">
											<a href="/comic/suicide-squad-2016" class="chart-title"><strong>Suicide
													Squad (2016-)</strong></a>
										</h5>
										<div>
											<a href="/comic/suicide-squad-2016/36">#36</a>
										</div>
										<small> <i class="fa fa-clock-o"></i> 28 Feb. 2018
										</small> <br />
										<div class="readOnly-28" style="display: inline-block;"></div>
										<script type="text/rocketscript">$('.readOnly-28').raty({path: "/packages/escapeboy/jraty/raty/lib/img", readOnly: true, score: "3.38"});</script>
										<br /> <small> <i class="fa fa-eye"></i> 21313
										</small>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media" style="margin-bottom: 20px;">
									<div class="media-left">
										<a href="/comic/saga-2012"> <img width="100"
											src='${pageContext.request.contextPath }/templates/public/uploads/manga/saga-2012/cover/cover_250x350.jpg'
											alt='Saga (2012-)'>
										</a>
									</div>
									<div class="media-body">
										<h5 class="media-heading">
											<a href="/comic/saga-2012" class="chart-title"><strong>Saga
													(2012-)</strong></a>
										</h5>
										<div>
											<a href="/comic/saga-2012/49">#49</a>
										</div>
										<small> <i class="fa fa-clock-o"></i> 28 Feb. 2018
										</small> <br />
										<div class="readOnly-133" style="display: inline-block;"></div>
										<script type="text/rocketscript">$('.readOnly-133').raty({path: "/packages/escapeboy/jraty/raty/lib/img", readOnly: true, score: "4.56"});</script>
										<br /> <small> <i class="fa fa-eye"></i> 18160
										</small>
									</div>
								</div>
							</div>
							<div class="col-xs-12 text-center">
								<ul class="pagination">
									<li class="disabled"><span>&laquo;</span></li>
									<li class="active"><span>1</span></li>
									<li><a href="/latest-release?page=2">2</a></li>
									<li><a href="/latest-release?page=3">3</a></li>
									<li><a href="/latest-release?page=4">4</a></li>
									<li><a href="/latest-release?page=5">5</a></li>
									<li><a href="/latest-release?page=6">6</a></li>
									<li><a href="/latest-release?page=7">7</a></li>
									<li><a href="/latest-release?page=8">8</a></li>
									<li class="disabled"><span>...</span></li>
									<li><a href="/latest-release?page=111">111</a></li>
									<li><a href="/latest-release?page=112">112</a></li>
									<li><a href="/latest-release?page=2" rel="next">&raquo;</a></li>
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

	