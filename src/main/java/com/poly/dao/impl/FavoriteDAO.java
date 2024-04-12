package com.poly.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.dao.IFavoriteDAO;
import com.poly.entity.Favorite;
import com.poly.utils.XJpa;

public class FavoriteDAO implements IFavoriteDAO{
	EntityManager em = XJpa.getEntityManager();

	@Override
	public List<Favorite> findALL() {
		String jpql = "SELECT o FROM Favorite o";
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		return query.getResultList();
	}

	@Override
	public void insert(Favorite t) {
		try {
			em.getTransaction().begin();
			em.persist(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		
	}

	@Override
	public void update(Favorite t) {
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
		Integer favoriteID = Integer.parseInt(id);
		Favorite f = em.find(Favorite.class, favoriteID);
		
		try {
			em.getTransaction().begin();
			em.remove(f);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public Favorite findById(String id) {
		return em.find(Favorite.class, id);
	}

	@Override
	public List<Favorite> findByUsernameID(Integer usernameID) {
		String jpql = "SELECT o FROM Favorite o WHERE o.user.id=?0";
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		query.setParameter(0, usernameID);
		return query.getResultList();
	}


}
