package com.skilldistillery.song;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.skilldistillery.song.data.MusicDao;
import com.skilldistillery.song.entities.Song;

class DaoTest {

	@Autowired
	private MusicDao dao;
	private EntityManager em;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void test() {
		Song song = new Song("Default",34.0, "Default", "Default", 34, "Default", "Default");
		dao.createSong(song);
		System.out.println(song);
		song = em.find(Song.class, 11);
		assertEquals("a", song.getTitle());
	}

}
