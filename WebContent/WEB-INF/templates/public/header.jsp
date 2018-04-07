<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>${title }</title>
<meta name="description"
	content="Website to read DC and Marvel Comics Online for FREE. Read Comics Online Absolutely for Free.
" />
<meta name="keywords"
	content="comics,dc comics,marvel comics,us comics,read dc comics, read marvel comics,read comics,read comics online,comics online,online comics,comics reader, comics scans,english comics,comics chapter,read free comics,free comics,read free comics online,comics viewer
" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="google-site-verification" content="" />
<script type="text/javascript">
	//<![CDATA[
	window.__cfRocketOptions = {
		byc : 0,
		p : 1519249718,
		petok : "aa93338d63e1de12c8fb64729063ff287aed33c0-1519828021-1800"
	};
	//]]>
</script>
<script type="text/javascript"
	src="https://ajax.cloudflare.com/cdn-cgi/scripts/b7ef205d/cloudflare-static/rocket.min.js"></script>
<link media="all" type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/templates/public/css/bootswatch/cosmo/bootstrap.min.css">
<link media="all" type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/templates/public/css/readcomics.css">
<Link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script data-rocketsrc="${pageContext.request.contextPath }/templates/public/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"
	type="text/rocketscript"></script>
<script data-rocketsrc="${pageContext.request.contextPath }/templates/public/js/vendor/jquery-1.11.0.min.js"
	type="text/rocketscript"></script>
<script data-rocketsrc="${pageContext.request.contextPath }/templates/public/js/vendor/bootstrap.min.js"
	type="text/rocketscript"></script>
<script data-rocketsrc="${pageContext.request.contextPath }/templates/public/js/vendor/jquery.autocomplete.min.js"
	type="text/rocketscript"></script>
<script data-rocketsrc="${pageContext.request.contextPath }/templates/public/js/main.js" type="text/rocketscript"></script>

<script data-rocketsrc="${pageContext.request.contextPath }/templates/public/js/colorful/jquery.carouFredSel-6.2.1-packed.js"
	type="text/rocketscript"></script>
<script data-rocketsrc="${pageContext.request.contextPath }/templates/public/js/colorful/jquery.touchSwipe.min.js"
	type="text/rocketscript"></script>
<script
	data-rocketsrc="${pageContext.request.contextPath }/templates/public/packages/escapeboy/jraty/raty/lib/jquery.raty.min.js"
	type="text/rocketscript" charset="utf-8"></script>
<script type="text/rocketscript">
        $( document ).ready(function() { $('#item-rating').raty({'score':function() { return $(this).attr('data-score'); },'number':5,'click':function(score, evt) { $.post('save/item_rating',{ item_id: $(this).attr('data-item'), score: score }); },'path':'${pageContext.request.contextPath }/templates/public/packages/escapeboy/jraty/raty/lib/img'}); });
    </script>
<script async='async'
	data-rocketsrc="https://www.googletagservices.com/tag/js/gpt.js"
	type="text/rocketscript"></script>
<script type="text/rocketscript">
        var googletag = googletag || {}; googletag.cmd = googletag.cmd || [];
    </script>
<script data-cfasync="true" type="text/rocketscript">(function(s,o,l,v,e,d){if(s[o]==null&&s[l+e]){s[o]="loading";s[l+e](d,l=function(){s[o]="complete";s[v+e](d,l,!1)},!1)}})(document,"readyState","add","remove","EventListener","DOMContentLoaded");(function(){var s=document.createElement("script");s.type="text/javascript";s.async=true;s.src="/cdn.engine.addroplet.com/Scripts/infinity.js.aspx_1321840521.jpg";s.id="infinity";s.setAttribute("data-guid","44c70d47-52b9-40b8-a502-4652197e38b9");s.setAttribute("data-version","async");var e=document.getElementsByTagName('script')[0];e.parentNode.insertBefore(s,e)})();</script>
</head>

<body>

	<script type="text/rocketscript">
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','//www.google-analytics.com/analytics.js','ga'); ga('create', "UA-88362225-1", 'auto'); ga('send', 'pageview');

    </script>

	<div class="header-top">
		<img src="${pageContext.request.contextPath }/templates/public/images/banner.jpg" style="width: 100%;" />
	</div>
	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-menu">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span>
			</button>
			<h1 style="margin: 0px; font-weight: bold;">
				<a class="navbar-brand" href="">ReadReadRead.com</a>
			</h1>
		</div>
		<div class="collapse navbar-collapse" id="navbar-menu">
			<ul class="nav navbar-nav  navbar-right ">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><i class="fa fa-user"></i> <span
						class="caret"></span></a>
					<ul class="dropdown-menu profil-menu">
						<li><a href="/admin/login"> <i class="fa fa-sign-in"></i>
								Login
						</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav  navbar-right ">
				<li class="search dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-search"></i></a>
					<div class="dropdown-menu">
						<form class="navbar-form">
							<div class="navbar-form  navbar-right " role="search">
								<div class="form-group">
									<input id="autocomplete" class="form-control" type="text"
										placeholder="Search..." style="border-radius: 0;" />
								</div>
							</div>
						</form>
					</div></li>
			</ul>

			<ul class="nav navbar-nav  navbar-right ">
				<!-- <li style="max-width: 100px !important">
                    <form class="navbar-form">
                        <div class="navbar-form  navbar-right " role="search">
                            <div class="form-group">
                                <input id="autocomplete" class="form-control" type="text" placeholder="Search..." style="border-radius:0;" />
                            </div>
                        </div>
                    </form>
                </li> -->
				<li><a href="http://readcomics.website">Home</a></li>
				<li><a href="/comic-list">Comic list</a></li>
				<li><a href="/latest-release">Latest release</a></li>
				<li><a href="/random">Random Comic</a></li>
				<li><a href="/advanced-search">Advanced Search</a></li>
				<li><a href="http://getcomics.info">GetComics</a></li>
				<li><a href="/latest-news">Weekly Comics</a></li>
				<li><a href="http://getcomics.info/contact/">Contact Us</a></li>
			</ul>
		</div>
	</nav>
	<style>
.searching {
	background-image: url('${pageContext.request.contextPath }/templates/public/images/ajax-loader.gif');
	background-position: 95% 50%;
	background-repeat: no-repeat;
}
</style>
	<script type="text/rocketscript">
        $('#autocomplete').autocomplete({ serviceUrl: "/search", onSearchStart: function (query) { $('#autocomplete').addClass('searching'); }, onSearchComplete: function (query, suggestions) { $('#autocomplete').removeClass('searching'); }, onSelect: function (suggestion) { showURL = "/comic/SELECTION"; window.location.href = showURL.replace('SELECTION', suggestion.data); } });
    </script>