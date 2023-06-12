package com.movie.bean;







////import org.hibernate.validator.constraints.NotEmpty;

//

import jakarta.persistence.CascadeType;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;

import jakarta.persistence.GenerationType;

import jakarta.persistence.Id;

import jakarta.persistence.OneToOne;

import jakarta.persistence.Table;



@Entity

@Table(name="LoginCredentials")

public class LoginCredentials {

	

 @Id

 @GeneratedValue(strategy=GenerationType.IDENTITY)

 private int id;

	

 //@NotEmpty(message="Username cannot be empty")

 @Column(name="userID",nullable=false)

 private String userID;

	

 //@NotEmpty(message="Password cannot be empty")

 @Column(name="password")

 private String password;

	

 @OneToOne(targetEntity = CustomerDetails.class,cascade = CascadeType.ALL)

 private CustomerDetails customer;

	





 public int getId() {

 return id;

 }







 public void setId(int id) {

 this.id = id;

 }







 public CustomerDetails getCustomer() {

 return customer;

 }





   

 public void setCustomer(CustomerDetails customer) {

 this.customer = customer;

 }











 public LoginCredentials() {

  

 }











 public String getPassword() {

 return password;

 }



 public void setPassword(String password) {

 this.password = password;

 }



 public String getCustomerID() {

 return userID;

 }



	

 public void setCustomerID(String userID) {

 this.userID = userID;

 }



 public LoginCredentials( String password,String userID,CustomerDetails customer) {

 super();

 this.password = password;

 this.userID = userID;

 this.customer = customer;



  

 }











 public String getUserID() {

 return userID;

 }







 public void setUserID(String userID) {

 this.userID = userID;

 }







 @Override

 public String toString() {

 return "LoginCredentials [id=" + id + ", userID=" + userID + ", password=" + password + ", customer=" + customer

  + "]";

 }

	

	

	

	



	



}

