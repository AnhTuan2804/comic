<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<div class="manga-footer">
		<ul class=" pull-right ">
		<li><a href="${pageContext.request.contextPath }/">Home</a></li>
			<c:forEach items="${listCategory }" var="cat">
				<li><a href="${pageContext.request.contextPath }/category/${slugUtil.makeSlug(cat.cat_name)}/${cat.cat_id}">${cat.cat_name}</a></li>
			</c:forEach>
		</ul>
		&copy;&nbsp;2018&nbsp; <a href="${pageContext.request.contextPath }/">Read
			Comics Online</a>
		<div
			style="text-align: center; font-size: 10px; position: absolute; left: 0px; right: 0px; bottom: 5px; visibility: hidden;">
		</div>
	</div>
	<script type="text/rocketscript">
        $(document).ready(function () { var url = window.location.href; var element = $('ul.nav a').filter(function () { if (url.charAt(url.length - 1) == '/') { url = url.substring(0, url.length - 1); } return this.href == url; }).parent(); if (element.is('li')) { element.addClass('active'); } });
    </script>
</body>

</html>