package com.poly.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.entity.Video;
import com.poly.entity.VideoGenre;
import com.poly.service.IVideoGenreService;
import com.poly.service.IVideoService;
import com.poly.service.impl.VideoGenreService;
import com.poly.service.impl.VideoService;
import com.poly.utils.XParam;

@WebServlet({ "/admin/video/index", "/admin/video/create", "/admin/video/update", "/admin/video/delete",
		"/admin/video/reset", "/admin/video/push/*" })
@MultipartConfig
public class VideoServlet extends HttpServlet {

	private IVideoGenreService videoGenreService;
	private IVideoService videoService;

	public VideoServlet() {
		videoGenreService = new VideoGenreService();
		videoService = new VideoService();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = req.getServletPath();
		
		Video video = XParam.getBean(Video.class, "HH:mm:ss");

		if (path.contains("create") || path.contains("update")) {
			
			video.getGenre().setId(XParam.getInteger("genreID"));

			// Tải lên tệp poster
			File file = XParam.getFile("poster", "/images/");
			video.setPoster(file.getName());

			if (path.contains("create")) {
				try {
					videoService.insert(video);
					req.setAttribute("messages", "Thêm video thành công!");
				} catch (Exception e) {
					// TODO: handle exception
					req.setAttribute("index", 1);
					req.setAttribute("messages_error", "Thêm video thất bại!");
				}
				

			} else if (path.contains("update")) {
				videoService.update(video);
				req.setAttribute("messages", "Sửa video thành công!");
			}

		} else if (path.contains("delete")) {
			videoService.delete(video.getId());
			video = new Video();
			req.setAttribute("messages", "Xóa video thành công!");

		} else if (path.contains("reset")) {
			video = new Video();
			req.setAttribute("messages", "");

		} else if (path.contains("push")) {
			String videoID = req.getPathInfo().substring(1);
			video = videoService.findById(videoID);
		}

		List<VideoGenre> videoGenres = videoGenreService.findALL();
		List<Video> videos = videoService.findALL();

		req.setAttribute("videoGenres", videoGenres);
		req.setAttribute("videos", videos);
		req.setAttribute("video", video);

		req.getRequestDispatcher("/views/admin/video/home.jsp").forward(req, resp);
	}

}
