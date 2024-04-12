package com.poly.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.poly.entity.User;

@WebFilter({
	"/video/shares/*",
	"/video/likes/*",
	"/video/favorites",
	"/adm/*",
	"/account/doi-mat-khau",
	"/account/thong-tin-ca-nhan",
	"/account/quen-mat-khau"
//	"/account/dang-xuat"
})
public class AuthFilter implements Filter{
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		if(user == null) {
			System.out.println(req.getRequestURI() + "  123");
			session.setAttribute("backUrl", req.getRequestURI());
			
			if(req.getRequestURI().contains("video/shares")) {
				session.setAttribute("backUrl", req.getContextPath() + "/trang-chu");
			}
			
			req.setAttribute("message", "Vui lòng đăng nhập");
			req.getRequestDispatcher("/account/dang-nhap").forward(request, response);
		} else {
			session.setAttribute("backUrl", null);
			String path = req.getServletPath();
			System.out.println(req.getRequestURI() + "  1234");
			if(path.contains("/admin") && !user.isAdmin()) {
				session.setAttribute("backUrl", req.getRequestURI());
				req.setAttribute("message", "Vui lòng đăng nhập với vai trò admin");
				req.getRequestDispatcher("/account/dang-nhap").forward(request, response);
			} else {
				chain.doFilter(request, response);
			}
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}
	
	@Override
	public void destroy() {
	}
}