package com.poly.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.entity.User;
import com.poly.service.IUserService;
import com.poly.service.impl.UserService;
import com.poly.utils.XParam;

@WebServlet({ "/admin/user/index", "/admin/user/create", "/admin/user/update", "/admin/user/delete",
		"/admin/user/reset", "/admin/user/push/*" })
@MultipartConfig
public class UserManageServlet extends HttpServlet {

	private IUserService userService;

	public UserManageServlet() {
		userService = new UserService();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = req.getServletPath();

		User user = XParam.getBean(User.class, "dd-MM-yyyy");

		if (path.contains("create") || path.contains("update")) {

			// Tải lên tệp poster
			File file = XParam.getFile("image", "/images/");
			user.setImage(file.getName());

			if (path.contains("create")) {
				try {
					userService.insert(user);
					req.setAttribute("messages", "Thêm người dùng thành công!");
				} catch (Exception e) {
					// TODO: handle exception
					req.setAttribute("index", 1);
					req.setAttribute("messages_error", "Thêm người dùng thất bại!");
				}

			} else if (path.contains("update")) {
				userService.update(user);
				req.setAttribute("messages", "Sửa người dùng thành công!");
			}

		} else if (path.contains("delete")) {
			userService.delete(user.getUserName());
			user = new User();
			req.setAttribute("messages", "Xoá người dùng thành công!");

		} else if (path.contains("reset")) {
			user = new User();
			req.setAttribute("messages", "");

		} else if (path.contains("push")) {
			String id = req.getPathInfo().substring(1);
			user = userService.findById(id);
		}


		List<User> users = userService.findALL();

		req.setAttribute("users", users);
		req.setAttribute("user", user);

		req.getRequestDispatcher("/views/admin/user/home.jsp").forward(req, resp);
	}

}
