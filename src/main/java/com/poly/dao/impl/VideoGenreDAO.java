package com.poly.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.dao.IVideoGenreDAO;
import com.poly.entity.VideoGenre;
import com.poly.utils.XJpa;

public class VideoGenreDAO implements IVideoGenreDAO{
	EntityManager em = XJpa.getEntityManager();

	@Override
	public List<VideoGenre> findALL() {
		String jpql = "SELECT o FROM VideoGenre o";
		TypedQuery<VideoGenre> query = em.createQuery(jpql, VideoGenre.class);
		return query.getResultList();
	}

	@Override
	public void insert(VideoGenre t) {
		try {
			em.getTransaction().begin();
			em.persist(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void update(VideoGenre t) {
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
		VideoGenre videoGenre = this.findById(id);
		
		try {
			em.getTransaction().begin();
			em.remove(videoGenre);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

//	@Override
	public VideoGenre findById(String id) {
		Integer genreId = Integer.valueOf(id);
		return em.find(VideoGenre.class, genreId);
	}

	@Override
	public VideoGenre findByCode(String code) {
		String jpql = "SELECT o FROM VideoGenre o WHERE o.code =:code";
		TypedQuery<VideoGenre> query = em.createQuery(jpql, VideoGenre.class);
		query.setParameter("code", code);
		return query.getSingleResult();
	}

	

}
