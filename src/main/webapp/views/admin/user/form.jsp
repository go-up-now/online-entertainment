<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@include file="/common/taglib.jsp" %>

		<form action="" method="POST" enctype="multipart/form-data">
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6">
						<div class="images">
							<img src="${pageContext.request.contextPath}/images/${user.image}" alt=""
								style="width: 100%; height: 100%" name="imagePanel"> <br>
						</div>
						<label for="">Địa chỉ</label> <br>
						<input type="text" name="address" value="${user.address}" style="width: 100%;"> <br>
						
						<label for="">Email</label> <br>
						<input type="email" name="email" value="${user.email}" style="width: 100%;">
						<br>
						<label for="">Vai trò</label> <br>
						<input type="radio" name="admin" id="admin" value="true" ${user.admin ? 'checked' : ''}>
						<label for="admin">Admin</label>
						<input type="radio" name="admin" id="customer" value="false" ${user.admin ? '' : 'checked'}>
						<label for="customer">Khách hàng</label> <br>
					</div>

					<div class="col-md-6">
						
						<label for="">User ID</label> <br>
						<input type="text" name="userid" value="${user.id}" readonly="readonly" style="width: 100%;"> <br>
						
						<label for="">Họ</label> <br>
						<input type="text" name="lastName" value="${user.lastName}" style="width: 100%;"> <br>

						<label for="">Tên</label> <br>
						<input type="text" name="firstName" value="${user.firstName}" style="width: 100%;">
						<br>
						<label for="">Hình ảnh</label> <br>
						<input type="file" name="image" value="${user.image}" style="width: 100%;">
						<br>
						<label for="">Tài khoản</label> <br>
						<input type="text" name="userName" value="${user.userName}" style="width: 100%;">
						<br>
						<label for="">Mật khẩu</label> <br>
						<input type="password" name="passWord" value="${user.passWord}" style="width: 100%;">
						<br>
						<label for="">Số điện thoại</label> <br>
						<input type="number" name="phoneNumber" value="${user.phoneNumber}" style="width: 100%;">
						<br>
						
					</div>
				</div>
			</div>
			<div class="panel-footer text-right">
				<button class="btn btn-info" formaction="${x}/create">Thêm</button>
				<button class="btn btn-info" formaction="${x}/update">Sửa</button>
				<button class="btn btn-info" formaction="${x}/delete">Xóa</button>
				<button class="btn btn-info" formaction="${x}/reset">Mới</button>
			</div>
		</form>