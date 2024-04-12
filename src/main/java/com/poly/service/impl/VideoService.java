package com.poly.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.poly.dao.IVideoDAO;
import com.poly.dao.impl.VideoDAO;
import com.poly.entity.Video;
import com.poly.service.IVideoService;

public class VideoService implements IVideoService {

	private IVideoDAO videoDAO;

	public VideoService() {
		videoDAO = new VideoDAO();
	}

	@Override
	public List<Video> findALL() {
		// TODO Auto-generated method stub
		return videoDAO.findALL();
	}

	@Override
	public void insert(Video t) {
		// TODO Auto-generated method stub
		videoDAO.insert(t);
	}

	@Override
	public void update(Video t) {
		// TODO Auto-generated method stub
		videoDAO.update(t);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		videoDAO.delete(id);
	}

	@Override
	public Video findById(String id) {
		// TODO Auto-generated method stub
		return videoDAO.findById(id);
	}

	@Override
	public List<Object[]> findByMostLike() {
		// TODO Auto-generated method stub
		return videoDAO.findByMostLike();
	}

	@Override
	public List<Video> findByMostViews() {
		// TODO Auto-generated method stub
		return videoDAO.findByMostViews();
	}

	@Override
	public List<Video> findByNewVideo() {
		// TODO Auto-generated method stub
		return videoDAO.findByNewVideo();
	}

	@Override
	public List<Video> findListLikeID() {
		// TODO Auto-generated method stub
		List<Object[]> listLike = findByMostLike();
		List<Video> listlikeID = new ArrayList<>();

		for (Object[] like : listLike) {
			String videoID = String.valueOf(like[0]);
			Video video = findById(videoID);
			listlikeID.add(video);
		}
		return listlikeID;
	}

	@Override
	public List<Video> findByTrailer() {
		// TODO Auto-generated method stub
		return videoDAO.findByTrailer();
	}

}
