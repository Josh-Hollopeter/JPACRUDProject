package com.skilldistillery.song.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.song.data.MusicDao;
import com.skilldistillery.song.entities.Song;
import com.skilldistillery.song.entities.User;

@Controller
public class SongController {

	@Autowired
	private MusicDao dao;

	@RequestMapping(path = { "home.do" }, method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {

		if (session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			List<Song> songList = dao.getAllSongs(user.getId());
			model.addAttribute("songs", songList);
			return "home";
		} else {
			return "login";
		}
	}

	@RequestMapping(path = "songDetails.do")
	public String songDetails(@RequestParam("songid") Integer id, Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			Song song = dao.findSongByid(id, user.getId());

			model.addAttribute("song", song);

			return "songDetails";
		} else {
			return "login";
		}

	}

	@RequestMapping(path = "edit.do")
	public String songEdit(@RequestParam("songid") Integer id, Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			Song song;
			if (id == null || id == 0) {
				song = new Song("Default", 3.45, "Default", "Default", 5, "Default", "Default");
				model.addAttribute("song", song);
				return "edit";
			} else {
				User user = (User) session.getAttribute("user");
				song = dao.findSongByid(id, user.getId());
				model.addAttribute("song", song);
				return "edit";
			}
		} else {
			return "login";
		}

	}

	@RequestMapping(path = "updateCreate.do")
	public String songEdit(Song song, Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			if (song.getId() == 0) {
				song = dao.createSong(song);
				model.addAttribute("song", song);
				return "redirect:home.do";
			} else {
				dao.updateSong(song, song.getId());
				return "redirect:home.do";
			}
		} else {
			return "login";
		}

	}

	@RequestMapping(path = "delete.do")
	public String songDelete(@RequestParam("songid") Integer id, Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			if (dao.deleteSong(id)) {

				return "redirect:home.do";
			} else {
				return "error";

			}
		} else {
			return "login";
		}

	}

	@RequestMapping(path = "art.do")
	public String songArt(Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			List<Song> songs = dao.getAllSongs(user.getId());
			if (songs.size() >= 4) {
				int i = 0;
				for (Song song : songs) {
					++i;
					model.addAttribute("song" + i, song);

				}
				songs = songs.subList(3, songs.size());
				model.addAttribute("songs", songs);
				return "art";
			} else {
				model.addAttribute("songs", songs);
				try {
					model.addAttribute("song1", songs.get(0));
				} catch (IndexOutOfBoundsException e) {
					return "redirect:home.do";
				}
				return "art";
			}
		} else {
			return "login";
		}

	}

	@RequestMapping(path = { "login.do", "/" }, method = RequestMethod.GET)
	public String loginView(Model model, HttpSession session, User user) {
		User user1 = (User) session.getAttribute("user");
		if (user1!=null && user1.getId() > 0) {
			return "home";
		} else if (session.getAttribute("user") != null) {
			return "redirect:home.do";
		} else {

			return "login";
		}

	}

	@RequestMapping(path = { "login.do" }, method = RequestMethod.POST)
	public String loginPostView(@RequestParam("userName") String userName, @RequestParam("password") String password,
			HttpSession session, Model model) {
		if (session.getAttribute("user") != null) {
			return "redirect:home.do";
		}
		User user = null;
		try {
			user = dao.getUserByUserNameAndPassword(userName, password);
		} catch (Exception e) {

		}

		if (user == null) {
			model.addAttribute("error", "No user found");
			return "redirect:login.do";

		}
		session.setAttribute("user", user);

		return "redirect:home.do";
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {

		session.setAttribute("user", null);

		return "redirect:login.do";

	}

	@RequestMapping(path = { "createUser.do" }, method = RequestMethod.POST)
	public String createUser(@RequestParam("userName") String userName, @RequestParam("password") String password,
			Model model, HttpSession session, User user) {
		User userCheck = dao.getUserByUserNameAndPassword(userName, password);
		if (userCheck != null) {
			model.addAttribute("userExists", "User already exists");
			return "login";
		}

		user = dao.createUser(userName, password);
		if (user != null) {
			session.setAttribute("user", user);
			return "redirect:home.do";
		} else {
			model.addAttribute("userExists", "User already exists");
			return "login";
		}

	}
}
