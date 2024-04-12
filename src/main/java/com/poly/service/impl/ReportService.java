package com.poly.service.impl;

import java.util.List;

import com.poly.dao.IReportDAO;
import com.poly.dao.IShareDAO;
import com.poly.dao.impl.ReportDAO;
import com.poly.dao.impl.ShareDAO;
import com.poly.service.IReportService;

public class ReportService implements IReportService{
	
private IReportDAO reportDAO;
	
	public ReportService() {
		reportDAO = new ReportDAO();
	}

	@Override
	public List<Object[]> getSoLuongVideoYeuThich() {
		// TODO Auto-generated method stub
		return reportDAO.getSoLuongVideoYeuThich();
	}

	@Override
	public List<Object[]> getNguoiDungYeuThich() {
		// TODO Auto-generated method stub
		return reportDAO.getNguoiDungYeuThich();
	}

	@Override
	public List<Object[]> getDanhSachBanBeDaChiaSe() {
		// TODO Auto-generated method stub
		return reportDAO.getDanhSachBanBeDaChiaSe();
	}

}
