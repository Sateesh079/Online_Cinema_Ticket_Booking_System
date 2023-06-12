package com.movie.bean;



import java.util.List;









//

import jakarta.persistence.CascadeType;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;

import jakarta.persistence.GenerationType;

import jakarta.persistence.Id;

import jakarta.persistence.JoinColumn;

import jakarta.persistence.ManyToOne;

import jakarta.persistence.OneToMany;

import jakarta.persistence.Table;

import lombok.Data;

import lombok.NoArgsConstructor;





@Entity

@Table(name="movies")

public class MovieList {



 @Id

 @GeneratedValue(strategy = GenerationType.IDENTITY)

 private Integer movieId;

 @Column(name="moviename")

 private String movieName;

 private String genre;

	



 @ManyToOne

 @JoinColumn(name="theater")

 private Theatre theater;





	

	

 public MovieList() {

 super();

 }





 public MovieList(Integer movieId, String movieName, String genre, Theatre theater) {

 super();

 this.movieId = movieId;

 this.movieName = movieName;

 this.genre = genre;

 this.theater = theater;

 }





 public Integer getMovieId() {

 return movieId;

 }





 public void setMovieId(Integer movieId) {

 this.movieId = movieId;

 }





 public String getMovieName() {

 return movieName;

 }





 public void setMovieName(String movieName) {

 this.movieName = movieName;

 }





 public String getGenre() {

 return genre;

 }





 public void setGenre(String genre) {

 this.genre = genre;

 }





 public Theatre getTheater() {

 return theater;

 }





 public void setTheater(Theatre theater) {

 this.theater = theater;

 }





 @Override

 public String toString() {

 return "MovieList [movieId=" + movieId + ", movieName=" + movieName + ", genre=" + genre + ", theater="

  + theater + "]";

 }

	
	

}

