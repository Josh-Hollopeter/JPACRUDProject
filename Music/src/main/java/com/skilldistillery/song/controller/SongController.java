package com.skilldistillery.song.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.song.data.MusicDao;
import com.skilldistillery.song.entities.Song;

@Controller
public class SongController {

	@Autowired
	private MusicDao dao;

	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String home(Model model) {
		List<Song> songList = dao.getAllSongs();
		model.addAttribute("songs", songList);
		return "home";
	}

	@RequestMapping(path = "songDetails.do")
	public String songDetails(@RequestParam("songid") int id, Model model) {

		Song song = dao.findSongByid(id);

		model.addAttribute("song", song);

		return "songDetails";

	}

	@RequestMapping(path = "edit.do")
	public String songEdit(@RequestParam("songid") int id, Model model) {
		Song song;
		if (id == 0) {
			song = new Song("Default", 34.0, "Default", "Default", 34, "Default", "Default");
			model.addAttribute("song", song);
			return "edit";
		} else {
			song = dao.findSongByid(id);
			model.addAttribute("song", song);
			return "edit";
		}


	}

}
