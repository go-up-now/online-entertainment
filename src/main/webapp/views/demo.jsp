<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class=" mt-5 py-5">

	<div class="mb-5">
		<div class="row">
			<h4 class="text-warning fw-bold">PHIM BỘ MỚI CẬP NHẬT</h4>
			<div class="col-md-40">
				<img
					src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
					alt="" class="w-100 h-100">
			</div>

			<div class="col-md-80">
				<div class="row">


					<!--  <div class="col-md-4">
							<a href="${pageContext.request.contextPath}/video-detail" class=" ">
								<div class="carousel-img">
									<img
										src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
										alt="" class="w-100">
									<div class="video_title">
										<h5 class="ps-3">Tiêu đề phim</h5>
									</div>
									<div class="pannel-video">
										<span class="ps-1">HD | Vietsub</span>
									</div>
								</div>
							</a>

						</div>
						<div class="col-md-4 ">
							<img
								src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
								alt="" class="w-100">
						</div>
						-->
					<div class="col-md-4 ">
						<img
							src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
							alt="" class="w-100">
					</div>
					<div class="col-md-4 ">
						<img
							src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
							alt="" class="w-100">
					</div>
					<div class="col-md-4 ">
						<img
							src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
							alt="" class="w-100">
					</div>
					<div class="col-md-4 ">
						<img
							src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
							alt="" class="w-100">
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md">
				<img
					src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
					alt="" class="w-100">
			</div>
			<div class="col-md">
				<img
					src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
					alt="" class="w-100">
			</div>
			<div class="col-md">
				<img
					src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
					alt="" class="w-100">
			</div>
			<div class="col-md">
				<img
					src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
					alt="" class="w-100">
			</div>
			<div class="col-md">
				<img
					src="${pageContext.request.contextPath}/images/nha-tro-co-qua-troi-phong.webp"
					alt="" class="w-100">
			</div>
		</div>
	</div>
	<!-- end newly update movie -->

	<ul>
		<c:forEach var="v" items="${items }">
			<li><iframe width="560" height="315"
					src="https://www.youtube.com/embed/${v.id }"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			</li>
			<li>${v.title }</li>
			<li>${pageContext.request.contextPath}/images/${v.poster}</li>
			<li>
				<img alt="" src="${pageContext.request.contextPath}/images/${v.poster}">
			</li>
			<li>${v.views }</li>
			<li>${v.description }</li>
		</c:forEach>
	</ul>
	
</body>
</html>