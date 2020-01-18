package com.skilldistillery.song.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.song.entities.Song;

@Service
@Transactional
public class MusicDaoImpl implements MusicDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Song findSongByid(int id) {
		return em.find(Song.class, id);
	}

	@Override
	public List<Song> getAllSongs() {

		String query = "SELECT song FROM Song song";
		List<Song> songList = em.createQuery(query, Song.class).getResultList();

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
		System.out.println(song);
		em.persist(song);
		System.out.println(song);

		return song;

	}
	@Override
	public Song updateSong(Song updateSong ,int id) {
		
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
}
