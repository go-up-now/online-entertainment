<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Quản lý người dùng</title>
  </head>

  <body>
    <div class="main-content">
      <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
          <ul class="breadcrumb">
            <li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
                chủ</a></li>
          </ul>
          <!-- /.breadcrumb -->
        </div>
        <div class="page-content">
          <div class="row">
            <div class="col-xs-12">

              <div class="container" style="width: 90%;">

                <ul class="nav nav-tabs">
                  <li class="active"><a data-toggle="tab" href="#favorite">Yêu thích</a></li>
                  <li><a data-toggle="tab" href="#favorite-user">Người dùng yêu thích</a></li>
                  <li><a data-toggle="tab" href="#shared-friends">Bạn bè đã chia sẻ</a></li>
                </ul>

                <div class="tab-content">
                  <div id="favorite" class="tab-pane fade in active">
                    <div class="panel panel-default">
                      <div class="panel-body">

                        <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>TIÊU ĐỀ VIDEO</th>
                          <th>SỐ LƯỢNG THÍCH</th>
                          <th>NGÀY CŨ NHẤT</th>
                          <th>NGÀY MỚI NHẤT</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="fvc" items="${list}">
                      	<tr>
                          <td>${fvc[0]}</td>
                          <td>${fvc[1]}</td>
                          <td>${fvc[2]}</td>
                          <td>${fvc[3]}</td>
                        </tr>
                      </c:forEach>
                      </tbody>
                    </table>
                      </div>
                    </div>
                  </div>

                  <div id="favorite-user" class="tab-pane fade">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>TÀI KHOẢN</th>
                          <th>HỌ VÀ TÊN</th>
                          <th>EMAIL</th>
                          <th>SỐ ĐIỆN THOẠI</th>
                          <th>NGÀY THÍCH</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="x" items="${listUserFavorites}">
                      	<tr>
                          <td>${x[0]}</td>
                          <td>${x[1]} ${x[2]}</td>
                          <td>${x[3]}</td>
                          <td>${x[4]}</td>
                          <td>${x[5]}</td>
                        </tr>
                      </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  
                  <div id="shared-friends" class="tab-pane fade">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>TÊN NGƯỜI GỬI</th>
                          <th>EMAIL NGƯỜI GỬI</th>
                          <th>EMAIL NGƯỜI NHẬN</th>
                          <th>TIÊU ĐỀ VIDEO</th>
                          <th>NGÀY GỬI</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="x" items="${listShareFriends}">
                      	<tr>
                          <td>${x[0]} ${x[1]}</td>
                          <td>${x[2]}</td>
                          <td>${x[3]}</td>
                          <td>${x[4]}</td>
                          <td>${x[5]}</td>
                        </tr>
                      </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>

              </div>
            </div>



          </div>
        </div>
      </div>
    </div>
    </div>
    <!-- /.main-content -->
  </body>

  </html>