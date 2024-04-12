<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@include file="/common/taglib.jsp" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Quản lý người dùng</title>
			<c:set var="x" value="${pageContext.request.contextPath}/admin/user"></c:set>
		</head>

		<body>
			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="ace-icon fa fa-home home-icon"></i> <a href="${pageContext.request.contextPath}/admin-home">Trang
									chủ</a></li>
						</ul>
						<!-- /.breadcrumb -->
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">

								<div class="container" style="width: 100%;">

									<ul class="nav nav-tabs">
										<li class="active"><a data-toggle="tab" href="#videoEdition">Thông tin người dùng</a>
										</li>
										<li><a data-toggle="tab" href="#videoList">Danh sách
												người dùng</a></li>
									</ul>

									<div class="tab-content">
										<div id="videoEdition" class="tab-pane fade in active">
											<div class="panel panel-default">
											
											<c:if test="${!empty messages}">
												<div class="messages">
													<c:choose>
														<c:when test="${index == 1}">${messages_error}</c:when>
														<c:otherwise>${messages}</c:otherwise>
													</c:choose>
												</div>
											</c:if>
											
												<!-- form -->
												<%@ include file="form.jsp" %>
												<!-- form -->

											</div>
										</div>

										<div id="videoList" class="tab-pane fade">

											<!-- table -->
											<%@ include file="table.jsp" %>
											<!-- table -->
												
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</body>

		</html>