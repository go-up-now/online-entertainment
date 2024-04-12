<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
</head>

<body>
    <div class="container my-5 pt-5 d-flex justify-content-center">
        <div class="card text-center" style="width: 300px;">
            <div class="card-header h5 text-white bg-primary">Quên mật khẩu</div>
            <div class="card-body px-5">
                <p class="card-text py-2">
                    Nhập email của bạn và chúng tôi sẽ gửi email hướng dẫn để bạn đặt lại mật khẩu
                </p>
                <div class="form-outline">
                    <input type="text" id="typeUsername" class="form-control my-3" />
                    <label class="form-label" for="typeUsername">Nhập tài khoản</label>
                </div>

                <div class="form-outline">
                    <input type="email" id="typeEmail" class="form-control my-3" />
                    <label class="form-label" for="typeEmail">Nhập email</label>
                </div>
                <a href="#" class="btn btn-primary w-100">Đặt lại mật khẩu</a>
                <div class="d-flex justify-content-between mt-4">
                    <a class="text-decoration-none" href="${pageContext.request.contextPath}/dang-nhap">Đăng nhập</a>
                    <a class="text-decoration-none" href="${pageContext.request.contextPath}/dang-ky">Đăng ký</a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>