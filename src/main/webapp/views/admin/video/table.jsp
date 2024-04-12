<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="table table-bordered">
				<thead>
					<tr>
						<th>VIDEO ID</th>
						<th>TIÊU ĐỀ</th>
						<th>HÌNH ẢNH</th>
						<th>SỐ LƯỢT XEM</th>
						<th>NĂM PHÁT HÀNH</th>
						<th>QUỐC GIA</th>
						<th>TRAILER</th>
						<th>TRẠNG THÁI</th>
						<th>THAO TÁC</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="video" items="${videos}">
						<tr>
							<td>${video.id}</td>
							<td>${video.title}</td>
							<td>${video.poster}</td>
							<td>${video.views}</td>
							<td>${video.yearOfRelease}</td>
							<td>${video.country}</td>
							<td>${video.trailer}</td>
							<td>${video.active ? 'Hoạt động' : 'Ngừng sản xuất'}
							</td>
							<td><a href="${x}/push/${video.id}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>