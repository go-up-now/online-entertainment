package com.poly.service;

import java.util.List;

import com.poly.entity.Video;

public interface IVideoService extends GenericService<Video>{
	List<Object[]> findByMostLike();
	List<Video> findByMostViews();
	List<Video> findByNewVideo();
	List<Video> findListLikeID();
	List<Video> findByTrailer();
}
