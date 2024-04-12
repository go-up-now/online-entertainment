<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<%@include file="/common/taglib.jsp" %>

	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Trailer</title>
	</head>

	<body>
		<div class="container my-5 pt-3">
			<div class="my-5">
				<h4 class="text-warning fw-bold">TRAILER</h4>
				<div class="row">
					<c:forEach var="video" items="${videosTrailer}" >
						
							<div class="col-md-3 height">
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
						
					</c:forEach>
					
				</div>

			</div>

		</div>
		<!-- end  -->
	</body>

	</html>