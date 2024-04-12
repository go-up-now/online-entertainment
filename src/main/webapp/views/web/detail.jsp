<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<%@include file="/common/taglib.jsp" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Video chi tiết</title>
	</head>

	<body>
		<div class="container my-5 pt-5">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<iframe height="500px" src="https://www.youtube.com/embed/${video.id}"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
						<div class="card-body">
							<h4 class="card-title">${video.title}</h4>
							<div class="d-flex ">
								<div class="pt-2">
									<a href="${pageContext.request.contextPath}/video/likes/${video.id}"
										class="btn btn-primary btn-sm">Like</a>
									<a href="" class="btn btn-primary btn-sm " data-bs-toggle="modal"
										data-bs-target="#myModal">Share</a>
								</div>
							</div>
							<div class="d-flex">
								<i class='bx bxs-star text-warning'></i> <i class='bx bxs-star text-warning'></i> <i
									class='bx bxs-star text-warning'></i> <i class='bx bxs-star text-warning'></i> <i
									class='bx bx-star text-warning'></i>
							</div>

							<div class="row">
								<div class="col-md-4">Trạng thái: ${video.active ? 'Hoạt động' : 'Ngưng sản xuất'}</div>
								<div class="col-md-4">Năm Phát Hành: ${video.yearOfRelease}</div>
								<div class="col-md-4">Quốc gia: ${video.country}</div>
								<div class="col-md-4">Thể loại: ${video.genre.title}</div>
								<div class="col-md-4">Đạo diễn: ${video.director}</div>
								<div class="col-md-4">Thời lượng: ${video.times}</div>
								<div class="col-md-4">Diễn viên: ${video.actor}</div>
							</div>

							<hr>
							<h4 class="text-warning">Nội dung phim</h4>
							<div class="card-text">${video.description}</div>

						</div>
					</div>
				</div>
				<!-- end left -->

				<!-- Demos -->
				<section id="demos" class="my-5">
					<div class="row">
						<div class="large-12 columns">
							<h4 class="text-warning fw-bold">CÓ THỂ BẠN CŨNG MUỐN XEM</h4>
							<div class="owl-carousel ">
								<c:forEach var="video" items="${listViews}" varStatus="loop">
									<!-- <c:if test="${loop.index < 12}"> -->
									<div class="item h-100">
										<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
											<div class="carousel-img w-100 h-100">
												<img src="${pageContext.request.contextPath}/images/${video.poster}"
													alt="" class="w-100 h-100">
												<div class="video_title">
													<span class="ps-1">${video.title}</span>
												</div>
												<div class="pannel-video">
													<span class="ps-1">HD | Vietsub</span>
												</div>
											</div>
										</a>
									</div>
									<!-- </c:if> -->
								</c:forEach>
							</div>
						</div>
					</div>
				</section>
				<!-- end carousel -->

				<hr>

				<!-- Demos -->
				<section id="demos">
					<div class="row">
						<div class="large-12 columns">
							<h4 class="text-warning fw-bold">PHIM ĐỀ CỬ MỚI</h4>
							<div class="owl-carousel ">
								<c:forEach var="video" items="${listVideo}" varStatus="loop">
									<!-- <c:if test="${loop.index < 12}"> -->
									<div class="item h-100">
										<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
											<div class="carousel-img w-100 h-100">
												<img src="${pageContext.request.contextPath}/images/${video.poster}"
													alt="" class="w-100 h-100">
												<div class="video_title">
													<span class="ps-1">${video.title}</span>
												</div>
												<div class="pannel-video">
													<span class="ps-1">HD | Vietsub</span>
												</div>
											</div>
										</a>
									</div>
									<!-- </c:if> -->
								</c:forEach>
							</div>
						</div>
					</div>
				</section>
				<!-- end carousel -->

			</div>
		</div>

		<!-- Modal -->
		<div class="modal top fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
			data-mdb-backdrop="true" data-mdb-keyboard="true">
			<div class="modal-dialog" style="width: 500px;">
				<div class="modal-content text-center">
					<div class="modal-header h5 text-white bg-primary justify-content-center">
						Gửi video đến bạn của bạn</div>
					<div class="modal-body px-5">
						<div class="form-outline">
							<label class="form-label" for="typeEmail">Nhập email người
								nhận ?</label> <input type="email" id="typeEmail" class="form-control my-3" />

						</div>
						<a href="${pageContext.request.contextPath}/video/shares/${video.id}"
							class="btn btn-primary w-100">Gửi</a>
					</div>
				</div>
			</div>
		</div>
	</body>

	</html>