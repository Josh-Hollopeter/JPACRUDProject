package com.skilldistillery.song.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Song {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;

	Song() {

	}

	public Song(String title) {
		super();
		this.title = title;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", title=" + title + "]";
	}

}
