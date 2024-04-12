package com.poly.controller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.entity.Video;
import com.poly.entity.VideoGenre;
import com.poly.service.IVideoGenreService;
import com.poly.service.IVideoService;
import com.poly.service.impl.VideoGenreService;
import com.poly.service.impl.VideoService;

@WebServlet("/trang-chu")
public class HomeServlet extends HttpServlet{
	
	 private IVideoService videoService;
	 private IVideoGenreService videoGenreService;
	 
	 public HomeServlet() {
		 videoService = new VideoService();
		 videoGenreService = new VideoGenreService();
	 }
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Video> list = videoService.findALL();
		List<VideoGenre> listVideoGenre = videoGenreService.findALL();
		List<Video> listViews = videoService.findByMostViews();
		List<Video> listNews = videoService.findByNewVideo();
		List<Object[]> listLike = videoService.findByMostLike();
		List<Video> listlikeID = videoService.findListLikeID();
		
		req.setAttribute("items", list);
		req.setAttribute("listVideo", listlikeID);
		req.getSession().setAttribute("videoGenres", listVideoGenre);
		req.setAttribute("listViews", listViews);
		req.setAttribute("listNews", listNews);
		
		req.getRequestDispatcher("/views/web/home.jsp").forward(req, resp);
	}
	
}
