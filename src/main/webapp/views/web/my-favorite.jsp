<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<%@include file="/common/taglib.jsp" %>
<c:set var="x" value="${pageContext.request.contextPath}"></c:set>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Video yêu thích</title>
    </head>

    <body>

        <div class="container mt-10">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <c:forEach var="favorite" items="${favorites}">
                          <c:set var="video" value="${favorite.video}" /> 
                            <div class="col-md-4 heights ">
                                <a href="${x}/video-detail/${video.id}">
                                    <div class="carousel-img w-100 h-100">
                                        <img src="${x}/images/${video.poster}" alt=""
                                            class="w-100 h-100">
                                        <div class="video_title">
                                            <span class="ps-1">${video.title}</span>
                                        </div>
                                        <div class="pannel-video">
                                            <span class="ps-1">HD | Vietsub</span>
                                        </div>
                                    </div>
                                </a>
                                <div class="d-flex justify-content-end bg-warning">
                                    <div class="pt-2">
                                    	<a href="${x}/video/unlike/${favorite.id}" class="btn btn-primary btn-sm">unlike</a>
                                        <a href="#" class="btn btn-primary btn-sm " data-bs-toggle="modal"
                                            data-bs-target="#myModal">Share</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end card -->
                        </c:forEach>
                    </div>
                </div>

                <div class="col-md-4 mt-3">
                    <div class="list-group shadow mb-3">
                        <a class="list-group-item bg-red fw-bold text-white">PHIM HÀI THỊNH HÀNH</a>
                    </div>
                    <c:forEach var="video" items="${videosView }" varStatus="loop">
                        <c:if test="${loop.index < 10 }">
                            <div class="row mb-3">
                                <div class="col-md-5">
                                    <a href="${pageContext.request.contextPath}/video-detail/${video.id}">
                                        <img class="card-img-top shadow"
                                            src="${pageContext.request.contextPath}/images/${video.poster}"
                                            alt="Card image">
                                    </a>
                                </div>
                                <!-- end -->

                                <div class="col-md-7 d-flex align-items-center">
                                    <a href="${pageContext.request.contextPath}/video-detail/${video.id}"
                                        class="text-black text-decoration-none">
                                        ${video.title}
                                    </a>
                                </div>
                            </div>
                            <!-- end line -->
                        </c:if>
                    </c:forEach>
                </div>
                <!-- end -->

            </div>
        </div>
        <!-- end categories -->

        <!-- Modal -->
        <div class="modal top fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
            data-mdb-backdrop="true" data-mdb-keyboard="true">
            <div class="modal-dialog" style="width: 500px;">
                <div class="modal-content text-center">
                    <div class="modal-header h5 text-white bg-primary justify-content-center">
                        Gửi video đến bạn của bạn</div>
                    <div class="modal-body px-5">
                        <div class="form-outline">
                            <label class="form-label" for="typeEmail">Nhập email người nhận ?</label>
                            <input type="email" id="typeEmail" class="form-control my-3" />

                        </div>
                        <a href="${pageContext.request.contextPath}/video/shares/${video.id}" class="btn btn-primary w-100">Gửi</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>