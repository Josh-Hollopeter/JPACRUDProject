package com.skilldistillery.song.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Song {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;
	private Double length;

	@Column(name = "album_art")
	private String albumArt;

	private String genre;
	private Integer rating;
	private String album;
	private String artist;

	Song() {

	}

	public Song(String title, Double length, String albumArt, String genre, Integer rating, String album,
			String artist) {
		super();
		this.title = title;
		this.length = length;
		this.albumArt = albumArt;
		this.genre = genre;
		this.rating = rating;
		this.album = album;
		this.artist = artist;
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

	public Double getLength() {
		return length;
	}

	public void setLength(Double length) {
		this.length = length;
	}

	public String getAlbumArt() {
		return albumArt;
	}

	public void setAlbumArt(String albumArt) {
		this.albumArt = albumArt;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	@Override
	public String toString() {
		return "Song [title=" + title + ", length=" + length + ", albumArt=" + albumArt + ", genre=" + genre
				+ ", rating=" + rating + ", album=" + album + ", artist=" + artist + "]";
	}

}
