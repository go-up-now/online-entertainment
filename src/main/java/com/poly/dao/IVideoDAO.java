package com.poly.dao;

import java.util.List;

import com.poly.entity.Video;

public interface IVideoDAO extends GenericDAO<Video>{
	List<Object[]> findByMostLike();
	List<Video> findByMostViews();
	List<Video> findByNewVideo();
	List<Video> findByTrailer();
}
