package com.movie.service;



import java.util.List;



import com.movie.bean.MovieList;

import com.movie.bean.Theatre;



public interface MovieService {

	

 public List<MovieList> listMovies();

 public MovieList saveMovie(MovieList movie);

 public MovieList findByMovieId(int id);

 public MovieList updateMovie(MovieList movie);

 public void deletMovie(int id);

	









}

