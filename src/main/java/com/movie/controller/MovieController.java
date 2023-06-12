package com.movie.controller;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.PutMapping;

import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.RestController;



import java.util.*;



import com.movie.bean.MovieList;

import com.movie.bean.Theatre;

import com.movie.repository.MovieListRepository;

import com.movie.repository.TheatreRepository;

import com.movie.service.MovieListServiceImpl;

import com.movie.service.MovieService;

import com.movie.service.TheatreService;



import jakarta.servlet.http.HttpSession;



@Controller

@RequestMapping("/MovieTable")

public class MovieController {

	

 @Autowired

 MovieService movieService;

 @Autowired

 MovieListRepository movieRepo;

	

 @Autowired

 TheatreRepository theaterRepo;

	

	



	

 @GetMapping("/movieList")

 public String MoviesList(Model model,HttpSession session) {

 if(session.getAttribute("admin")==null) {

  return "redirect:/";

 }

 //	List<MovieList> movie=movieService.listMovies();

 model.addAttribute("movies", movieService.listMovies());

 return "moviesList";

  

 }

	

 @RequestMapping("/addMovie")

 public String addTheatre(Model m,HttpSession session){

  

 if(session.getAttribute("admin")==null) {

  return "redirect:/";

 }

  

 m.addAttribute("theaters",theaterRepo.findAll());

 m.addAttribute("movie", new MovieList());

	

 return "addMovie";

	

 }

	

 @PostMapping("/addMovie")

 public String saveMovie(@ModelAttribute("movie") MovieList movie,Theatre theater, Model m,HttpSession session) {

  

 if(session.getAttribute("admin")==null) {

  return "redirect:/";

 }

  

 System.out.println("saveMovie");

 //theaterRepo.save(theater);

 movie.setTheater(movie.getTheater());

 movieService.saveMovie(movie);

  





  

 m.addAttribute("msg", "Inserted Succesfully");

   m.addAttribute("movies", movieService.listMovies());

 return "redirect:/MovieTable/movieList";

	

 }

	

	

//	@PostMapping("/addMovie")

//	public MovieList saveMovie(@RequestBody MovieList movie){

//  

// return movieService.saveMovie(movie);

//  

// }

	

 @PutMapping("/movies")

 public MovieList updateMovie(@RequestBody MovieList movie){

  

  

  

 return movieService.saveMovie(movie);

  

 }

	

	

 @GetMapping("/updateMovie/{id}")

  public String updateMovie(@PathVariable("id") Integer id, Model model,HttpSession session) {

  

 if(session.getAttribute("admin")==null) {

  return "redirect:/";

 }

  

 MovieList movie=movieService.findByMovieId(id);

 List<Theatre> theaters=theaterRepo.findAll();

 model.addAttribute("theater", theaters);

 model.addAttribute("movie", movie);

 return "updateMovie";

  }

	

 @PostMapping("/updateMovie/{id}")

 public String updatedMovie(@ModelAttribute("movie") MovieList movie,Theatre theater,Model m,HttpSession session) {

  

 if(session.getAttribute("admin")==null) {

  return "redirect:/";

 }

  

  

 MovieList existingMovie=movieService.findByMovieId(movie.getMovieId());

  

 if(existingMovie!=null) {

  existingMovie.setMovieName(movie.getMovieName());

  existingMovie.setGenre(movie.getGenre());

  existingMovie.setTheater(movie.getTheater());

  movieService.saveMovie(existingMovie); 

  

 } 

 List<Theatre> theaters=theaterRepo.findAll();

 m.addAttribute("theater", theaters);

 m.addAttribute("msg", "Updated Succesfully");

   m.addAttribute("movies", movieService.listMovies());

         return "updateMovie";

  

 }

	

	

 @GetMapping("/deletMovie/{id}")

 public String deletTheater(@PathVariable("id") Integer Id,HttpSession session) {

  

 if(session.getAttribute("admin")==null) {

  return "redirect:/";

 }

  

  

 System.out.println("delet");

 movieRepo.deleteById(Id);

 return "redirect:/MovieTable/movieList";

 }



//   

// @PostMapping("/movies/{id}/book")

// public String confirmBooking(@PathVariable("id") Long id, @RequestParam String name, @RequestParam String email) {

// Optional<MovieList> movie = movieService.findByMovieId(id);

// if (movie.isPresent()) {

// // create a new booking record in the database

// return "redirect:/confirmation";

//

// } else {

// return "redirect:/movies";

//

// }



  //}







}

