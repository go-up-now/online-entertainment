package com.poly.service.impl;

import java.util.List;

import com.poly.dao.IVideoGenreDAO;
import com.poly.dao.impl.VideoGenreDAO;
import com.poly.entity.VideoGenre;
import com.poly.service.IVideoGenreService;

public class VideoGenreService implements IVideoGenreService{
	
	private IVideoGenreDAO videoGenreDAO;
	
	public VideoGenreService() {
		videoGenreDAO = new VideoGenreDAO();
	}

	@Override
	public List<VideoGenre> findALL() {
		// TODO Auto-generated method stub
		return videoGenreDAO.findALL();
	}

	@Override
	public void insert(VideoGenre t) {
		// TODO Auto-generated method stub
		videoGenreDAO.insert(t);
	}

	@Override
	public void update(VideoGenre t) {
		// TODO Auto-generated method stub
		videoGenreDAO.update(t);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		videoGenreDAO.delete(id);
	}

	@Override
	public VideoGenre findById(String id) {
		// TODO Auto-generated method stub
		return videoGenreDAO.findById(id);
	}

	@Override
	public VideoGenre findByCode(String code) {
		// TODO Auto-generated method stub
		return videoGenreDAO.findByCode(code);
	}

	

}
