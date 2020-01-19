package com.skilldistillery.song.data;

import java.util.List;

import com.skilldistillery.song.entities.Song;
import com.skilldistillery.song.entities.User;

public interface MusicDao {
	
	public Song findSongByid(int id, int userId);
	
	public List <Song> getAllSongs(int userId);

	boolean deleteSong(int id);

	Song createSong(Song song);

	Song updateSong(Song updateSong, int id);
	
	public User getUserByUserNameAndPassword(String userName, String password);
	
	public User createUser(String userName, String password);
	

}
