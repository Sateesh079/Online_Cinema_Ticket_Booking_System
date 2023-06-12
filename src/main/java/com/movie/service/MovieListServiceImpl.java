package com.movie.service;



import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;



import com.movie.bean.MovieList;

import com.movie.bean.Theatre;

import com.movie.repository.MovieListRepository;



@Service

public class MovieListServiceImpl implements MovieService{

	

 @Autowired

 private MovieListRepository movieRepo;



 @Override

 public MovieList saveMovie(MovieList movie) {

 return movieRepo.save(movie);

  

 }



 @Override

 public MovieList findByMovieId(int id) {

 // TODO Auto-generated method stub

 return movieRepo.findByMovieId(id);

 }



 @Override

 public MovieList updateMovie(MovieList movie) {

 // TODO Auto-generated method stub

 return movieRepo.save(movie);

 }



 @Override

 public void deletMovie(int id) {

  

 movieRepo.deleteById(id);

 }



 @Override

 public List<MovieList> listMovies() {

 // TODO Auto-generated method stub

 return movieRepo.findAll();

 }



	









}

