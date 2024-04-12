package com.poly.service;

import java.util.List;

import com.poly.entity.VideoGenre;

public interface IVideoGenreService extends GenericService<VideoGenre>{
	VideoGenre findByCode(String code);
}
