package com.poly.service;

import java.util.List;

import com.poly.entity.Favorite;

public interface IFavoriteService extends GenericService<Favorite>{
	List<Favorite> findByUsernameID(Integer usernameID);
}
