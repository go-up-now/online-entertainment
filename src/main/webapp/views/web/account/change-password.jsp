<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
</head>

<body>
    <div class="container my-5 pt-5 d-flex justify-content-center">
        <div class="card text-center" style="width: 500px;">
            <div class="card-header h5 text-white bg-primary">Quên mật khẩu</div>
            <div class="card-body px-5">
                <div class="modal-body px-5">
					<form action="${pageContext.request.contextPath}/account/doi-mat-khau" method="post">
					<p class="w-100 bg-info">
                    	${messages}
                	</p>
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
						<button class="btn btn-primary w-100">Đổi mật khẩu</button>
					</form>
				</div>
            </div>
        </div>
    </div>
</body>

</html>