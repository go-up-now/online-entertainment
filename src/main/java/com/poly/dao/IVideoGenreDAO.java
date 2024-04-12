package com.poly.dao;

import com.poly.entity.VideoGenre;

public interface IVideoGenreDAO extends GenericDAO<VideoGenre>{
	VideoGenre findByCode(String code);
}
