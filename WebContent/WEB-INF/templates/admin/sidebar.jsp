<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="${pageContext.request.contextPath }/admin">ADMIN WEB COMIC</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
      	<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="${pageContext.request.contextPath }/admin">
            <i class="fa fa-home"></i>
            <span class="nav-link-text">Trang chủ</span>
          </a>
        </li>
        <li class="nav-item active" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-book"></i>
            <span class="nav-link-text">Quản lí truyện</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li class="active">
              <a href="${pageContext.request.contextPath }/admin/category">
              	<i class="fa fa-bars"></i>
              	<span class="nav-link-text">Danh mục</span>
              </a>
            </li>
            <li>
              <a href="${pageContext.request.contextPath }/admin/comic">
              <i class="fa fa-book"></i>
              <span class="nav-link-text">Truyện</span></a>
            </li>
            <li>
              <a href="${pageContext.request.contextPath }/admin/comment">
              <i class="fa fa-comment"></i>
              <span class="nav-link-text">Bình luận</span></a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="${pageContext.request.contextPath }/admin/author">
            <i class="fa fa-vcard-o"></i>
            <span class="nav-link-text">Quản lí tác giả</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="${pageContext.request.contextPath }/admin/user">
            <i class="fa fa-user"></i>
            <span class="nav-link-text">Quản lí người dùng</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        
        <li class="nav-item">
          <a href="${pageContext.request.contextPath }/logout" class="nav-link" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>