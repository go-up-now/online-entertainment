package com.poly.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.entity.User;
import com.poly.service.IUserService;
import com.poly.service.impl.UserService;
import com.poly.utils.RR;
import com.poly.utils.XCookie;
import com.poly.utils.XParam;

@WebServlet({ "/account/thong-tin-ca-nhan", "/account/quen-mat-khau", "/account/doi-mat-khau", "/account/dang-nhap",
		"/account/dang-ky", "/account/dang-xuat"

})
public class AccountServlet extends HttpServlet {

	private IUserService userService;

	public AccountServlet() {
		userService = new UserService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		String url = "";
		req.setAttribute("messages", "");

		if (path.contains("account/dang-nhap")) {
			String value = XCookie.getValue("user", true);
			
			if(value != null) {
				String[] values = value.split(",");
				req.setAttribute("username", values[0]);
				req.setAttribute("password", values[1]);
			}
			url = "login.jsp";
		}
		else if (path.contains("thong-tin-ca-nhan"))
			url = "edit-profile.jsp";
		else if (path.contains("quen-mat-khau"))
			url = "forgot-password.jsp";
		else if (path.contains("doi-mat-khau"))
			url = "change-password.jsp";
		else if (path.contains("dang-nhap"))
			url = "login.jsp";
		else if (path.contains("dang-xuat")) {
			req.getSession().setAttribute("user", null);
			resp.sendRedirect(req.getContextPath() + "/account/dang-nhap");
			return;
		} else if (path.contains("account/dang-ky"))
			url = "register.jsp";

		req.getRequestDispatcher("/views/web/account/" + url).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = req.getServletPath();
		String url = "";
		req.setAttribute("messages", "");

		User user = XParam.getBean(User.class, "dd-MM-yyyy");

		if (path.contains("account/dang-nhap")) {
			Boolean remember = XParam.getBoolean("remember");
			User user1 = userService.findByUsername(user.getUserName());

			if (user1 == null) {
				req.setAttribute("messages", "Tài khoản hoặc mật khẩu không đúng!");
				
			} else if (!user1.getPassWord().equals(user.getPassWord())) {
				req.setAttribute("messages", "Tài khoản hoặc mật khẩu không đúng!");
				
			} else {
				if (remember) {
					String value = user.getUserName() + "," + user.getPassWord();
					XCookie.add("user", value, 30*24, true);
				}
				else
					XCookie.remove("user");

				req.getSession().setAttribute("user", user1);
				String backURI = (String) req.getSession().getAttribute("backUrl");

				if(backURI != null) {
					resp.sendRedirect(backURI);
					return;
				}
				else {
					if (user1.isAdmin())
						resp.sendRedirect(req.getContextPath() + "/admin-home");
					else
						resp.sendRedirect(req.getContextPath() + "/trang-chu");
					return;
				}
			}
			url = "login.jsp";
		}

		else if (path.contains("thong-tin-ca-nhan"))
			url = "edit-profile.jsp";
		else if (path.contains("doi-mat-khau")) {
			User user1 = (User) req.getSession().getAttribute("user");
			
			String password = XParam.getString("old-password");
			String newPassword = XParam.getString("new-password");
			String newPassword2 = XParam.getString("new-password2");
			
			if(password.isEmpty() || newPassword.isEmpty() || newPassword2.isEmpty()) {
				req.setAttribute("messages", "Vui lòng nhập đầy đủ thông tin!");
			}
			else if(!user1.getPassWord().equals(password)) {
				req.setAttribute("messages", "Mật khẩu cũ không đúng!");
			}
			else if(!newPassword2.equals(newPassword)) {
				req.setAttribute("messages", "Xác nhận mật khẩu không đúng!");
			}
			else {
				user1.setPassWord(newPassword2);
				userService.update(user1);
				req.setAttribute("messages", "Đổi mật khẩu thành công!");
			}
//			return;
			url = "change-password.jsp";
		}
			

		else
			url = "register.jsp";

		req.getRequestDispatcher("/views/web/account/" + url).forward(req, resp);
	}
}
