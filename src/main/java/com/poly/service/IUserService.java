package com.poly.service;

import com.poly.entity.User;

public interface IUserService extends GenericService<User>{
	User findByUsername(String username);
	void deleteById(Integer id);
}
