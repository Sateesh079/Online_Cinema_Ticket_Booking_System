package com.movie.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;



import com.movie.bean.Theatre;





@Repository

public interface TheatreRepository extends JpaRepository<Theatre, Integer> {

	

 Theatre findByTheatreId(int id);

 //List<Theatre> findAllByThatreName();



}

