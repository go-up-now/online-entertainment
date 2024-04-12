package com.poly.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.dao.IShareDAO;
import com.poly.entity.Share;
import com.poly.utils.XJpa;

public class ShareDAO implements IShareDAO{
	EntityManager em = XJpa.getEntityManager();

	@Override
	public List<Share> findALL() {
		String jpql = "SELECT o FROM Share o";
		TypedQuery<Share> query = em.createQuery(jpql, Share.class);
		return query.getResultList();
	}

	@Override
	public void insert(Share t) {
		try {
			em.getTransaction().begin();
			em.persist(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		
	}

	@Override
	public void update(Share t) {
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
		Share share = this.findById(id);
		
		try {
			em.getTransaction().begin();
			em.remove(share);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		
	}

	@Override
	public Share findById(String id) {
		return em.find(Share.class, id);
	}

	

}
