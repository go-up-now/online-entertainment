package com.poly.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.entity.Favorite;
import com.poly.entity.User;
import com.poly.entity.Video;
import com.poly.entity.VideoGenre;
import com.poly.service.IFavoriteService;
import com.poly.service.IUserService;
import com.poly.service.IVideoGenreService;
import com.poly.service.IVideoService;
import com.poly.service.impl.FavoriteService;
import com.poly.service.impl.UserService;
import com.poly.service.impl.VideoGenreService;
import com.poly.service.impl.VideoService;

@WebServlet({ "/video/genre/*", "/video/unlike/*", "/video/likes/*", "/video-detail/*", "/video/favorites",
		"/video/trailer", "/video/shares/*" })
public class VideoServlet extends HttpServlet {

	private IVideoGenreService videoGenreService;
	private IFavoriteService favoriteService;
	private IVideoService videoService;
	private IUserService userService;

	public VideoServlet() {
		videoGenreService = new VideoGenreService();
		favoriteService = new FavoriteService();
		userService = new UserService();
		videoService = new VideoService();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = req.getServletPath();
		String jsp = "VideoGenre.jsp";
		User user = (User) req.getSession().getAttribute("user");

		if (path.contains("genre")) {
			String genreID = req.getPathInfo().substring(1);
			VideoGenre videoGenre = videoGenreService.findByCode(genreID);
			List<Video> videos = videoGenre.getVideos();
			
			req.setAttribute("videos", videos);
			req.setAttribute("videoGenre", videoGenre);
			
			jsp = "VideoGenre.jsp";
			
		} else if (path.contains("video/likes")) {
			String likeID = req.getPathInfo().substring(1);
			Video video = videoService.findById(likeID);
			Favorite favorite = new Favorite();
			
			favorite.getVideo().setId(likeID);
			favorite.getUser().setId(user.getId());
			favorite.getVideo().setTitle(video.getTitle());
			favorite.getVideo().setPoster(video.getPoster());
			
			favoriteService.insert(favorite);
			
			resp.sendRedirect(req.getContextPath() + "/video-detail/" + likeID);
			return;
			
		} else if (path.contains("unlike")) {
			String favoriteID = req.getPathInfo().substring(1);
			
			favoriteService.delete(favoriteID);
			
			resp.sendRedirect(req.getContextPath() + "/video/favorites");
			return;
			
		} else if (path.contains("detail")) {
			List<Video> listViews = videoService.findByMostViews();
			String videoID = req.getPathInfo().substring(1);
			Video video = videoService.findById(videoID);
			List<Video> listlikeID = videoService.findListLikeID();

			req.setAttribute("listVideo", listlikeID);
			req.setAttribute("listViews", listViews);
			req.setAttribute("video", video);
			jsp = "detail.jsp";
			
		} else if (path.contains("favorites")) {
			List<Video> videosView = videoService.findByMostViews();
			List<Favorite> favorites = favoriteService.findByUsernameID(user.getId());

			req.setAttribute("videosView", videosView);
			req.setAttribute("favorites", favorites);

			jsp = "my-favorite.jsp";
			
		} else if (path.contains("trailer")) {
			List<Video> videosTrailer = videoService.findByTrailer();

			req.setAttribute("videosTrailer", videosTrailer);

			jsp = "trailer.jsp";
			
		}
		else if (path.contains("shares")) {
			List<Video> videosTrailer = videoService.findByTrailer();

			req.setAttribute("videosTrailer", videosTrailer);

//			jsp = "trailer.jsp";
		}

		req.getRequestDispatcher("/views/web/" + jsp).forward(req, resp);
	}
}
