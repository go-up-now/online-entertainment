package com.poly.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.entity.User;

@WebFilter("/*")
public class AuthorFilter implements HttpFilter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		String path = req.getServletPath();
		User user = (User) req.getSession().getAttribute("user");
		
		if(user != null) {
			if(path.contains("admin") && !user.isAdmin()) {
				resp.sendRedirect(req.getContextPath() + "/account/dang-nhap");
				return;
			}
		}
		else if(user == null) {
			if(path.contains("admin")) {
				resp.sendRedirect(req.getContextPath() + "/account/dang-nhap");
				return;
			}
//				req.getRequestDispatcher("/account/dang-nhap").forward(req, resp);
//				resp.sendRedirect(req.getContextPath() + "/account/dang-nhap");
		}
		chain.doFilter(req, resp);
		
	}

}
