<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp" %>
	<c:set var="name" value="Xin chào, ${sessionScope.user.firstName}"></c:set>
	
<nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top">
	<div class="container">
		<a class="navbar-brand text-red fw-bold" href="${x}/trang-chu">ONLINE
			ENTERTAINMENT</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#mynavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse ms-5" id="mynavbar">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0)">Giới thiệu</a></li>
				<li class="nav-item dropdown">
				  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Thể loại</a>
				  <ul class="dropdown-menu me-10">
				  	<c:forEach var="videoGenre" items="${sessionScope.videoGenres}">
				  		<li><a class="dropdown-item" href="${x}/video/genre/${videoGenre.code}">${videoGenre.title}</a></li>
				  	</c:forEach>
				  </ul>
				</li>
				<c:if test="${!empty sessionScope.user}"></c:if>
				<li class="nav-item"><a class="nav-link"
					href="${x}/video/favorites">Video yêu thích</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${x}/video/trailer">Trailer</a></li>
			</ul>
			<form class="d-flex">
				<div class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown">
						 ${sessionScope.user != null ? name : 'Tài khoản'}
					</a>
					<ul class="dropdown-menu me-10">
					<c:choose>
						<c:when test="${empty sessionScope.user}">
							<li><a class="dropdown-item" href="${x}/account/dang-nhap">Đăng nhập</a></li>
							<li><a class="dropdown-item" href="${x}/account/dang-ky">Đăng ký</a></li>
						</c:when>
						<c:otherwise>
							<c:if test="${sessionScope.user.admin}">
								<li><a class="dropdown-item" href="${x}/admin-home">Trang quản trị</a></li>
							</c:if>
							<li><a class="dropdown-item" href="${x}/account/doi-mat-khau">Đổi mật khẩu</a></li>
							<li><a class="dropdown-item" href="${x}/account/thong-tin-ca-nhan">Thông tin cá nhân</a></li>
							<li><a class="dropdown-item" href="${x}/account/dang-xuat">Thoát</a></li>
						</c:otherwise>
					</c:choose>
						
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>

<!-- Modal -->
	<div class="modal top fade" id="myChangeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
		data-mdb-backdrop="true" data-mdb-keyboard="true">
		<div class="modal-dialog" style="width: 500px;">
			<div class="modal-content text-center">
				<div class="modal-header h5 text-white bg-primary justify-content-center">
					Đổi mật khẩu</div>
				<div class="modal-body px-5">
				
					<form action="" method="post">
						<div class="form-outline">
						<label class="form-label" for="">Mật khẩu cũ</label>
							<input type="password" name="old-password" class="form-control my-3" />
						</div>
						
						<div class="form-outline">
						<label class="form-label" for="">Mật khẩu mới</label>
							<input type="password" name="new-password" class="form-control my-3" />
						</div>
						
						<div class="form-outline">
						<label class="form-label" for="">Xác nhận mật khẩu mới</label>
							<input type="password" name="new-password2" class="form-control my-3" />
						</div>
						<a href="${pageContext.request.contextPath}/account/doi-mat-khau" class="btn btn-primary w-100">Đổi mật khẩu</a>
					</form>
				</div>
			</div>
		</div>
	</div>