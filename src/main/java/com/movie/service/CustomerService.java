package com.movie.service;

import com.movie.bean.CustomerDetails;
import java.util.List;

public interface CustomerService {
 public CustomerDetails save(CustomerDetails cust);

 public CustomerDetails findById(Integer id);

 public CustomerDetails update(CustomerDetails cust);

 public void deletById(Integer id);

 public List<CustomerDetails> findAll();
}
