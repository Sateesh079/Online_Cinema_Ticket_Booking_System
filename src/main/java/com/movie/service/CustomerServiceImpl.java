package com.movie.service;



import java.util.*;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;



import com.movie.bean.CustomerDetails;

import com.movie.repository.CustomerDetailsRepository;





@Service

public class CustomerServiceImpl implements CustomerService {

	

 @Autowired

 CustomerDetailsRepository custRepo;



 @Override

 public CustomerDetails save(CustomerDetails cust) {

  

 return custRepo.save(cust);

 }



 @Override

 public CustomerDetails findById(Integer id) {

 // TODO Auto-generated method stub

 return custRepo.findById(id).get();

 }



 @Override

 public CustomerDetails update(CustomerDetails cust) {

 // TODO Auto-generated method stub

 return custRepo.save(cust);

 }



 @Override

 public void deletById(Integer id) {

 // TODO Auto-generated method stub

 custRepo.deleteById(id);

  

 }



 @Override

 public List<CustomerDetails> findAll() {

 // TODO Auto-generated method stub

 List<CustomerDetails> list=new ArrayList<CustomerDetails>();

 custRepo.findAll().forEach(cust->list.add(cust));

 return list;

 }



}

