package com.movie.repository;



import org.springframework.data.jpa.repository.JpaRepository;



import com.movie.bean.LoginCredentials;



public interface LoginCredentialsRepository extends JpaRepository<LoginCredentials, Integer>{

	

 LoginCredentials findByUserID(String userID);



}

