package com.poly.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.dao.IUserDAO;
import com.poly.entity.User;
import com.poly.utils.XJpa;

public class UserDAO implements IUserDAO{
	EntityManager em = XJpa.getEntityManager();

	@Override
	public List<User> findALL() {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		return query.getResultList();
	}

	@Override
	public void insert(User t) {
		try {
			em.getTransaction().begin();
			em.persist(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void update(User t) {
		try {
			em.getTransaction().begin();
			em.merge(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void delete(String username) {
		User user = this.findByUsername(username);
		
		try {
			em.getTransaction().begin();
			em.remove(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		
	}

	@Override
	public User findById(String id) {
		Integer userID = Integer.parseInt(id);
		return em.find(User.class, userID);
	}

	@Override
	public User findByUsername(String username) {
		try {
			String jpql = "SELECT o FROM User o WHERE o.userName =:usernames";
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("usernames", username);
			return query.getSingleResult();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		String userID = String.valueOf(id);
		User user = this.findById(userID);
		
		try {
			em.getTransaction().begin();
			em.remove(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

}
