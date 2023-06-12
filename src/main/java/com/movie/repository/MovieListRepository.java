package com.movie.repository;



import java.util.List;



import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;



import com.movie.bean.MovieList;

import com.movie.bean.Theatre;



@Repository

public interface MovieListRepository extends JpaRepository<MovieList, Integer>,CrudRepository<MovieList, Integer> {



MovieList findByMovieId(int id);







}

