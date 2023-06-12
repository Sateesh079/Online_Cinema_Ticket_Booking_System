package com.movie.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.repository.CrudRepository;



import com.movie.bean.CustomerDetails;



public interface CustomerDetailsRepository extends CrudRepository<CustomerDetails, Integer> {



}

