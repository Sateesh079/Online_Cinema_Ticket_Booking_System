package com.movie.service;



import java.util.List;



import com.movie.bean.Theatre;



public interface TheatreService {

	

 public List<Theatre> TheatreList();



 Theatre saveTheatre(Theatre theatre);

  Theatre findByTheatreId(int id);

 Theatre updaTheatre(Theatre theatre);

 void deletTheatre(int id);

 List<Theatre> allTheater();



}

