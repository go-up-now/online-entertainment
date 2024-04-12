package com.poly.dao;

import java.util.List;

import com.poly.entity.Favorite;

public interface IFavoriteDAO extends GenericDAO<Favorite>{
	List<Favorite> findByUsernameID(Integer usernameID);
}
