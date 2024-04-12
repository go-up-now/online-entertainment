<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@include file="/common/taglib.jsp" %>

		<form action="" method="POST" enctype="multipart/form-data">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6">
						<div class="images">
							<img src="${pageContext.request.contextPath}/images/${video.poster}" alt=""
								style="width: 100%; height: 100%" name="imagePanel"> <br>
						</div>

						<label for="">Loại video</label> <br>
						<select name="genreID" id="" style="width: 100%;">
							<c:forEach var="videoGenre" items="${videoGenres}">
								<option value="${videoGenre.id}">
									${videoGenre.title}</option>
							</c:forEach>
						</select> <br>
						<label for="">Năm phát hành</label> <br>
						<input type="number" name="yearOfRelease" value="${video.yearOfRelease}" style="width: 100%;">
						<br> <label for="">Đạo diễn</label> <br>
						<input type="text" name="director" value="${video.director}" style="width: 100%;">
						<br> <input type="checkbox" name="trailer" id="trailer" value="true" ${video.trailer ? 'checked'
							: '' }> <label for="trailer">Trailer</label>
					</div>

					<div class="col-md-6">
						<label for="">Video ID</label> <br>
						<input type="text" name="id" value="${video.id}" style="width: 100%;"> <br>

						<label for="">Tiêu đề</label> <br>
						<input type="text" name="title" value="${video.title}" style="width: 100%;">
						<br>
						<label for="">Hình ảnh</label> <br>
						<input type="file" name="poster" value="${video.poster}" style="width: 100%;">
						<br>
						<label for="">Số lượt xem</label> <br>
						<input type="number" name="views" value="${video.views}" style="width: 100%;">
						<br>
						
						<input type="radio" name="active" id="active" value="true" ${video.active ? 'checked' : ''}>
						<label for="active">Hoạt động</label>
						<input type="radio" name="active" id="unActive" value="false" ${video.active ? '' : 'checked'}>
						<label for="unActive">Không hoạt động</label> <br>
						
						<label for="">Quốc gia</label> <br>
						<input type="text" name="country" value="${video.country}" style="width: 100%;">
						<br>
						<label for="">Thời lượng</label> <br>
						<input type="text" name="times" value="<fmt:formatDate value="${video.times}" pattern="HH:mm:ss"/>" style="width: 100%;">
						<br>
						<label for="">Diễn viên</label> <br>
						<input type="text" name="actor" value="${video.actor}" style="width: 100%;">
						<br>
					</div>
				</div>
			</div>

			<div class="panel-heading">
				<label for="">Mô tả</label> <br>
				<textarea name="description" id="" cols="110" rows="5" 
					style="width: 100%;">${video.description}</textarea>
			</div>
			<div class="panel-footer text-right">
				<button class="btn btn-info" formaction="${x}/create">Thêm</button>
				<button class="btn btn-info" formaction="${x}/update">Sửa</button>
				<button class="btn btn-info" formaction="${x}/delete">Xóa</button>
				<button class="btn btn-info" formaction="${x}/reset">Mới</button>
			</div>
		</form>