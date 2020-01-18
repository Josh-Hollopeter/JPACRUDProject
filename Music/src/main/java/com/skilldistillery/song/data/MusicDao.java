package com.skilldistillery.song.data;

import java.util.List;

import com.skilldistillery.song.entities.Song;

public interface MusicDao {
	
	public Song findSongByid(int id);
	
	public List <Song> getAllSongs();

	boolean deleteSong(int id);

	Song createSong(Song song);

	Song updateSong(Song updateSong, int id);
	
	

}
