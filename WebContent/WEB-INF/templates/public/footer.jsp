<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="manga-footer">
		<ul class=" pull-right ">
			<li><a href="http://readcomics.website">Home</a></li>
			<li><a href="/comic-list">Comic list</a></li>
			<li><a href="/latest-release">Latest release</a></li>
			<li><a href="/random">Random Comic</a></li>

			<li><a href="http://getcomics.info">GetComics</a></li>
			<li><a href="/latest-news">Weekly Comics</a></li>
			<li><a href="http://getcomics.info/contact/">Contact Us</a></li>
		</ul>
		&copy;&nbsp;2018&nbsp; <a href="http://readcomics.website">Read
			Comics Online</a> &nbsp; <a href="/contact-us" title="Contact us"><i
			class="fa fa-envelope-square"></i></a> &nbsp; <a href="/feed"
			title="RSS feed" style="color: #FF9900"><i
			class="fa fa-rss-square"></i></a>
		<div
			style="text-align: center; font-size: 10px; position: absolute; left: 0px; right: 0px; bottom: 5px; visibility: hidden;">
		</div>
	</div>
	<script type="text/rocketscript">
        $(document).ready(function () { var url = window.location.href; var element = $('ul.nav a').filter(function () { if (url.charAt(url.length - 1) == '/') { url = url.substring(0, url.length - 1); } return this.href == url; }).parent(); if (element.is('li')) { element.addClass('active'); } });
    </script>
</body>

</html>