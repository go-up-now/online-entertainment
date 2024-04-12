<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<%@include file="/common/taglib.jsp" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Trang chủ</title>
	</head>

	<body>
		<!-- Carousel -->
		<div class="container- mt-5">
			<!-- Carousel -->
			<div id="demo" class="carousel slide" data-bs-ride="carousel">

				<!-- Indicators/dots -->
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
				</div>

				<!-- The slideshow/carousel -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${pageContext.request.contextPath}/images/banner1.webp" alt="Los Angeles"
							class="d-block" style="width: 100%">
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/images/banner2.jpg" alt="Chicago" class="d-block"
							style="width: 100%">
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/images/banner3.jpg" alt="New York" class="d-block"
							style="width: 100%">
					</div>
				</div>

				<!-- Left and right controls/icons -->
				<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
					<span class="carousel-control-next-icon"></span>
				</button>
			</div>
		</div>
		<!-- Carousel -->

		<div class="container my-5">

			<!-- Demos -->
			<section id="demos" class="my-5">
				<div class="row">
					<div class="large-12 columns">
						<h4 class="text-warning fw-bold">PHIM ĐỀ CỬ</h4>
						<div class="owl-carousel ">
							<c:forEach var="video" items="${listVideo}" varStatus="loop">
								<c:if test="${loop.index < 12}">
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
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</section>
			<!-- end carousel -->


			<div class="mb-5">
				<div class="row">
					<h4 class="text-warning fw-bold">PHIM HÀI MỚI CẬP NHẬT</h4>
						<c:forEach var="video" items="${items }" varStatus="loop">
							<c:if test="${loop.index < 1 }">
								<div class="col-md-40">
									<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
										<div class="carousel-img w-100 h-100">
											<img src="${pageContext.request.contextPath}/images/${video.poster}" alt=""
												class="w-100 h-100">
											<div class="video_title">
												<span class="ps-1">${video.title}</span>
											</div>
											<div class="pannel-video">
												<span class="ps-1">HD | Vietsub</span>
											</div>
										</div>
									</a>
								</div>
							</c:if>
						</c:forEach>

					<div class="col-md-80">
						<div class="row">
							<c:forEach var="video" items="${items }" varStatus="loop">
								<c:if test="${0 < loop.index && loop.index < 7 }">
									<div class="col-md-4 height">
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
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>

				<div class="row">
					<c:forEach var="video" items="${items }" varStatus="loop">
						<c:if test="${7 <= loop.index && loop.index < 12 }">
							<div class="col-md height">
								<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
									<div class="carousel-img w-100 h-100">
										<img src="${pageContext.request.contextPath}/images/${video.poster}" alt=""
											class="w-100 h-100">
										<div class="video_title">
											<span class="ps-1">${video.title}</span>
										</div>
										<div class="pannel-video">
											<span class="ps-1">HD | Vietsub</span>
										</div>
									</div>
								</a>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<!-- end newly update movie -->

			<div class="mb-5">
				<div class="row">
					<h4 class="text-warning fw-bold">PHIM THỊNH HÀNH</h4>
					<c:forEach var="video" items="${listViews}" varStatus="loop">
							<c:if test="${loop.index < 1 }">
								<div class="col-md-40">
									<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
										<div class="carousel-img w-100 h-100">
											<img src="${pageContext.request.contextPath}/images/${video.poster}" alt=""
												class="w-100 h-100">
											<div class="video_title">
												<span class="ps-1">${video.title}</span>
											</div>
											<div class="pannel-video">
												<span class="ps-1">HD | Vietsub</span>
											</div>
										</div>
									</a>
								</div>
							</c:if>
						</c:forEach>

					<div class="col-md-80">
						<div class="row">
							<c:forEach var="video" items="${listViews }" varStatus="loop">
								<c:if test="${0 < loop.index && loop.index < 7 }">
									<div class="col-md-4 height">
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
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>

				<div class="row">
					<c:forEach var="video" items="${listViews }" varStatus="loop">
						<c:if test="${7 <= loop.index && loop.index < 12 }">
							<div class="col-md height">
								<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
									<div class="carousel-img w-100 h-100">
										<img src="${pageContext.request.contextPath}/images/${video.poster}" alt=""
											class="w-100 h-100">
										<div class="video_title">
											<span class="ps-1">${video.title}</span>
										</div>
										<div class="pannel-video">
											<span class="ps-1">HD | Vietsub</span>
										</div>
									</div>
								</a>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<!-- end popular movie -->

			<div class="my-5">
				<h4 class="text-warning fw-bold">PHIM MỚI SẮP CHIẾU</h4>
				<div class="row">
					<c:forEach var="video" items="${listNews}" varStatus="loop">
						<c:if test="${loop.index < 5 }">
							<div class="col-md height">
								<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
									<div class="carousel-img w-100 h-100">
										<img src="${pageContext.request.contextPath}/images/${video.poster}" alt=""
											class="w-100 h-100">
										<div class="video_title">
											<span class="ps-1">${video.title}</span>
										</div>
										<div class="pannel-video">
											<span class="ps-1">HD | Vietsub</span>
										</div>
									</div>
								</a>
							</div>
						</c:if>
					</c:forEach>
					
				</div>
				<div class="row">
					<c:forEach var="video" items="${listNews}" varStatus="loop">
						<c:if test="${5 <= loop.index && loop.index < 10 }">
							<div class="col-md height">
								<a href="${pageContext.request.contextPath}/video-detail/${video.id}" class=" ">
									<div class="carousel-img w-100 h-100">
										<img src="${pageContext.request.contextPath}/images/${video.poster}" alt=""
											class="w-100 h-100">
										<div class="video_title">
											<span class="ps-1">${video.title}</span>
										</div>
										<div class="pannel-video">
											<span class="ps-1">HD | Vietsub</span>
										</div>
									</div>
								</a>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>

		</div>
		<!-- end  -->


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
						<a href="#" class="btn btn-primary w-100">Gửi</a>
					</div>
				</div>
			</div>
		</div>




	</body>

	</html>