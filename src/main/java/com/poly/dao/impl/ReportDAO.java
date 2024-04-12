package com.poly.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.dao.IReportDAO;
import com.poly.utils.XJpa;

public class ReportDAO implements IReportDAO {
	EntityManager em = XJpa.getEntityManager();

	@Override
	public List<Object[]> getSoLuongVideoYeuThich() {
		String jpql = "SELECT o.video.title, count(o), min(o.likeDate), max(o.likeDate) "
				+ "FROM Favorite o GROUP BY o.video.title";
		TypedQuery<Object[]> query = em.createQuery(jpql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;
	}

	@Override
	public List<Object[]> getNguoiDungYeuThich() {
		String jpql = "SELECT o.user.userName, o.user.lastName, o.user.firstName, o.user.email,"
				+ " o.user.phoneNumber, o.likeDate "
				+ "FROM Favorite o ";
		TypedQuery<Object[]> query = em.createQuery(jpql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;
	}

	@Override
	public List<Object[]> getDanhSachBanBeDaChiaSe() {
		String jpql = "SELECT o.user.lastName, o.user.firstName, o.user.email, o.emails,"
				+ "o.video.title, o.shareDate "
				+ "FROM Share o ";
		TypedQuery<Object[]> query = em.createQuery(jpql, Object[].class);
		List<Object[]> list = query.getResultList();
		return list;
	}

}
