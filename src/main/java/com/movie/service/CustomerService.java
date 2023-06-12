package com.movie.service;



import java.util.List;



import com.movie.bean.CustomerDetails;



public interface CustomerService {

	

 public CustomerDetails save(CustomerDetails cust);

 public CustomerDetails findById(Integer id);

 public CustomerDetails update(CustomerDetails cust);

 public void deletById(Integer id);

 public List<CustomerDetails> findAll();



}

