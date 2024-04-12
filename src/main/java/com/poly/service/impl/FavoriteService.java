package com.poly.service.impl;

import java.util.List;

import com.poly.dao.IFavoriteDAO;
import com.poly.dao.impl.FavoriteDAO;
import com.poly.entity.Favorite;
import com.poly.service.IFavoriteService;

public class FavoriteService implements IFavoriteService{
	
	private IFavoriteDAO favoriteDAO;
	
	public FavoriteService() {
		favoriteDAO = new FavoriteDAO();
	}

	@Override
	public List<Favorite> findALL() {
		// TODO Auto-generated method stub
		return favoriteDAO.findALL();
	}

	@Override
	public void insert(Favorite t) {
		favoriteDAO.insert(t);
	}

	@Override
	public void update(Favorite t) {
		// TODO Auto-generated method stub
		favoriteDAO.update(t);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		favoriteDAO.delete(id);
	}

	@Override
	public Favorite findById(String id) {
		// TODO Auto-generated method stub
		return favoriteDAO.findById(id);
	}

	@Override
	public List<Favorite> findByUsernameID(Integer usernameID) {
		// TODO Auto-generated method stub
		return favoriteDAO.findByUsernameID(usernameID);
	}

}
