package com.skilldistillery.song.data;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.song.entities.Song;
import com.skilldistillery.song.entities.User;

@Service
@Transactional
public class MusicDaoImpl implements MusicDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Song findSongByid(int id,int userId) {
		return em.find(Song.class, id);
	}

	@Override
	public List<Song> getAllSongs(int userId) {

		String query = "SELECT song FROM Song song where userId = :userID";
		List<Song> songList = em.createQuery(query, Song.class).setParameter("userID", userId).getResultList();

		return songList;
	}

	@Override
	public boolean deleteSong(int id) {

		try {
			em.remove(em.find(Song.class, id));
		} catch (IllegalArgumentException e) {
			return true;
		}

		boolean result = !em.contains(em.find(Song.class, id));
		return result;

	}

	@Override
	public Song createSong(Song song) {
		em.persist(song);

		return song;

	}

	@Override
	public Song updateSong(Song updateSong, int id) {

		Song oldSong = em.find(Song.class, id);

		oldSong.setTitle(updateSong.getTitle());
		oldSong.setAlbum(updateSong.getAlbum());
		oldSong.setArtist(updateSong.getArtist());
		oldSong.setGenre(updateSong.getGenre());
		oldSong.setLength(updateSong.getLength());
		oldSong.setRating(updateSong.getRating());
		oldSong.setAlbumArt(updateSong.getAlbumArt());

		return oldSong;
	}

	// USER METHODS
	public List<User> getAllUser() {
		String query = "SELECT user FROM User user";
		List<User> users = em.createQuery(query, User.class).getResultList();
		return users;
	}

	public User getUserByUserNameAndPassword(String userName, String password) {
		List<User> users = getAllUser();
		User u = null;
		for (User user : users) {
			if (user.getUserName().equals(userName) && user.getPassword().equals(password)) {
				u = user;
				break;
			}
		}
		return u;
	}
	
	public User createUser(String userName, String password) {
		User user = new User(userName, password);
		System.out.println(user.getPassword() + user.getUserName() +user.getId());
		try{
			System.out.println(em);
			em.persist(user);
			em.flush();
			
		}catch(PersistenceException e) {
			e.printStackTrace();
			user = null;
		}

		return user;

		
		
	}


}
