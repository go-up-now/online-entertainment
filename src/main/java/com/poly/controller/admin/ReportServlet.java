package com.poly.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.service.IReportService;
import com.poly.service.impl.ReportService;

@WebServlet({
	"/admin/report"
})
public class ReportServlet extends HttpServlet{
	
	private IReportService reportService;
	
	public ReportServlet() {
		reportService = new ReportService();
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		String path = req.getServletPath();
		
		List<Object[]> listVideoFavorites = reportService.getSoLuongVideoYeuThich();
		List<Object[]> listUserFavorites = reportService.getNguoiDungYeuThich();
		List<Object[]> listShareFriends = reportService.getDanhSachBanBeDaChiaSe();
		
		req.setAttribute("list", listVideoFavorites);
		req.setAttribute("listUserFavorites", listUserFavorites);
		req.setAttribute("listShareFriends", listShareFriends);
		
		
		req.getRequestDispatcher("/views/admin/reports.jsp").forward(req, resp);
	}
}
