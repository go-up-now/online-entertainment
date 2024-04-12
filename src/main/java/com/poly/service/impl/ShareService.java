package com.poly.service.impl;

import java.util.List;

import com.poly.dao.IShareDAO;
import com.poly.dao.impl.ShareDAO;
import com.poly.entity.Share;
import com.poly.service.IShareService;

public class ShareService implements IShareService{
	
	private IShareDAO shareDAO;
	
	public ShareService() {
		shareDAO = new ShareDAO();
	}

	@Override
	public List<Share> findALL() {
		// TODO Auto-generated method stub
		return shareDAO.findALL();
	}

	@Override
	public void insert(Share t) {
		// TODO Auto-generated method stub
		shareDAO.insert(t);
	}

	@Override
	public void update(Share t) {
		// TODO Auto-generated method stub
		shareDAO.update(t);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		shareDAO.delete(id);
	}

	@Override
	public Share findById(String id) {
		// TODO Auto-generated method stub
		return shareDAO.findById(id);
	}

	

}
