package com.movie.service;



import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;



import com.movie.bean.Theatre;

import com.movie.repository.TheatreRepository;



@Service

public class TheatreServiceImpl implements TheatreService {

	

 @Autowired

 private MovieListServiceImpl mov;



 @Autowired

 private TheatreRepository theatreRepo;



	

 @Override

 public Theatre saveTheatre(Theatre theatre) {

 return theatreRepo.save(theatre);

 }



 @Override

 public Theatre findByTheatreId(int id) {

 // TODO Auto-generated method stub

 return theatreRepo.findByTheatreId(id);

 }



 @Override

 public Theatre updaTheatre(Theatre theatre) {

 // TODO Auto-generated method stub

 return theatreRepo.save(theatre);

 }



 @Override

 public void deletTheatre(int id) {

 // TODO Auto-generated method stub

// mov.d

// theatreRepo.deleteById(id);

  

  

 }



 @Override

 public List<Theatre> TheatreList() {

 // TODO Auto-generated method stub

 return theatreRepo.findAll();

 }



 @Override

 public List<Theatre> allTheater() {

 // TODO Auto-generated method stub

 return theatreRepo.findAll();

 }



}

