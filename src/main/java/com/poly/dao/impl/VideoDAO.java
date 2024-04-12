package com.poly.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.dao.IVideoDAO;
import com.poly.entity.Video;
import com.poly.utils.XJpa;

public class VideoDAO implements IVideoDAO{
	EntityManager em = XJpa.getEntityManager();

	@Override
	public List<Video> findALL() {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		return query.getResultList();
	}

	@Override
	public void insert(Video t) {
		try {
			em.getTransaction().begin();
			em.persist(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void update(Video t) {
		try {
			em.getTransaction().begin();
			em.merge(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void delete(String id) {
		Video video = this.findById(id);
		
		try {
			em.getTransaction().begin();
			em.remove(video);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public Video findById(String id) {
		return em.find(Video.class, id);
	}

	@Override
	public List<Object[]> findByMostLike() {
		String jpql = "SELECT v.id, v.title, COUNT(f) AS likeCount\r\n"
				+ "FROM Video v\r\n"
				+ "JOIN v.favorites f\r\n"
				+ "GROUP BY v.id, v.title\r\n"
				+ "ORDER BY likeCount DESC " ;
		TypedQuery<Object[]> query = em.createQuery(jpql, Object[].class);
		return query.getResultList();
	}

	@Override
	public List<Video> findByMostViews() {
		String jpql = "SELECT o FROM Video o ORDER BY o.views DESC";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		return query.getResultList();
	}

	@Override
	public List<Video> findByNewVideo() {
		String jpql = "SELECT o FROM Video o WHERE o.yearOfRelease >= 2022";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		return query.getResultList();
	}

	@Override
	public List<Video> findByTrailer() {
		String jpql = "SELECT o FROM Video o WHERE o.trailer =?0";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter(0, true);
		return query.getResultList();
	}

	

}
