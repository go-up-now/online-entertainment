package com.poly.dao;

import com.poly.entity.User;

public interface IUserDAO extends GenericDAO<User>{
	User findByUsername(String username);
	void deleteById(Integer id);
}
