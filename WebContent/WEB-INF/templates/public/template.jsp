<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- header -->
<tiles:insertAttribute name="header"></tiles:insertAttribute>
	<div class="container">
		<div class="row">
			<div class="col-sm-12"></div>
		</div>
		<div class="row">
			<tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
	</div>
<tiles:insertAttribute name="footer"></tiles:insertAttribute>