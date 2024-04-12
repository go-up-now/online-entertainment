package com.poly.service.impl;

import java.util.List;

import com.poly.dao.IUserDAO;
import com.poly.dao.impl.UserDAO;
import com.poly.entity.User;
import com.poly.service.IUserService;

public class UserService implements IUserService{
	
	private IUserDAO userDAO;
	
	public UserService() {
		userDAO = new UserDAO();
	}

	@Override
	public List<User> findALL() {
		// TODO Auto-generated method stub
		return userDAO.findALL();
	}

	@Override
	public void insert(User t) {
		// TODO Auto-generated method stub
		userDAO.insert(t);
	}

	@Override
	public void update(User t) {
		// TODO Auto-generated method stub
		userDAO.update(t);
	}

	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub
		userDAO.delete(username);
	}

	@Override
	public User findById(String id) {
		// TODO Auto-generated method stub
		return userDAO.findById(id);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return userDAO.findByUsername(username);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		userDAO.deleteById(id);;
	}

	

}
