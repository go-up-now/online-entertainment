<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="table table-bordered">
				<thead>
					<tr>
						<th>STT</th>
						<th>HỌ</th>
						<th>TÊN</th>
						<th>TÀI KHOẢN</th>
						<th>SỐ ĐIỆN THOẠI</th>
						<th>EMAIL</th>
						<th>HÌNH ẢNH</th>
						<th>VAI TRÒ</th>
						<th>THAO TÁC</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.id}</td>
							<td>${user.lastName}</td>
							<td>${user.firstName}</td>
							<td>${user.userName}</td>
							<td>${user.phoneNumber}</td>
							<td>${user.email}</td>
							<td>${user.image}</td>
							<td>${user.admin ? 'Admin' : 'Khách hàng'}
							</td>
							<td><a href="${x}/push/${user.id}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>