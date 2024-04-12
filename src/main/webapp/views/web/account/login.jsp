<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<c:set var="x" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>

<body>
    <!-- Content -->
    <section class="mymaincontent mt-10 mb-5">
        <div class="container d-flex justify-content-center">
            <form action="${x}/account/dang-nhap" class="w-70 border-red " name="loginForm" method="post">
                <div class="d-flex ">
                    <div class="left-form w-70 p-5 pe-5 light-heigh">
                    
                    	<c:if test="${!empty messages}">
                    		<div class="messages">${messages}</div>
                    	</c:if>
                    	
                        <h5>Đăng nhập tài khoản</h5>
                        <label for="">Tài khoản</label> <span class="text-red">*</span> <br>

                        <input type="text" name="userName" value="${username}" placeholder="Tài khoản" class="w-100">

                        <label for="">Mật khẩu</label> <span class="text-red">*</span> <br>
                        <input type="password" name="passWord" value="${password}"  placeholder="Mật khẩu" class="w-100">

                        <input type="checkbox" name="remember" id="remember" value="true"> <label for="remember">Nhớ mật khẩu?</label>

                        <button class="w-100 my-3 btn-login">ĐĂNG NHẬP</button>
                        <div class="text-center">Hoặc đăng nhập bằng</div>
                        <div class="media d-flex text-white py-2">
                            <div class="fb bg-primary w-50 text-center">
                                <i class='bx bxl-facebook-square text-white fs-5'></i>
                                <span class="py-3">Facebook</span>
                            </div>
                            <div class="gg bg-red w-50 text-center">
                                <i class='bx bxl-google-plus text-white fs-5'></i>
                                <span>Google</span>
                            </div>
                        </div>
                        <div class="text-center">Bạn quên mật khẩu bấm <a
                                href="${x}/quen-mat-khau">vào đây</a></div>
                        <div class="text-center">Bạn chưa có tài khoản <a href="${x}/dang-ky">đăng ký</a></div>
                    </div>
                    <!-- left form end -->

                    <div class="right-form m-0 p-5 bg-red text-white">
                        <h5>Quyền lợi thành viên</h5> <br>
                        <p>Xem những tiểu phẩm hay</p>
                        <p>Xem những video full HD</p>
                        <p>Tìm kiếm truy cập nhanh</p>
                        <p>Tích điểm đổi quà</p>
                        <p>Dễ dàng chia sẻ video với bạn bè</p>
                    </div>
                    <!-- right form end -->
                </div>
            </form>
        </div>
    </section>
</body>

</html>