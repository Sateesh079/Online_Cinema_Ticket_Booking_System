package com.movie.bean;







import jakarta.persistence.Column;

import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;

import jakarta.persistence.GenerationType;

import jakarta.persistence.Id;

import jakarta.persistence.OneToOne;

import jakarta.persistence.Table;



@Entity

@Table(name="CustomerDetails")

public class CustomerDetails {

	

 @Id

 @GeneratedValue(strategy=GenerationType.IDENTITY)

 @Column(name="customer_id",nullable=false,unique=true)

 public int customerID;

	

 private String name; 

 private String dob;

 private String gender;

 private String presentAddress; 

 private String phoneNumber;

	

//	@OneToOne(targetEntity=LoginCredentials.class) 

//	private LoginCredentials login;

	

 private String email;



 public CustomerDetails() {

  

 }



 public int getCustomerID() {

 return customerID;

 }



 public void setCustomerID(int customerID) {

 this.customerID = customerID;

 }



 public String getName() {

 return name;

 }



 public void setName(String name) {

 this.name = name;

 }



 public String getDob() {

 return dob;

 }



 public void setDob(String dob) {

 this.dob = dob;

 }



 public String getGender() {

 return gender;

 }



 public void setGender(String gender) {

 this.gender = gender;

 }



 public String getPresentAddress() {

 return presentAddress;

 }



 public void setPresentAddress(String presentAddress) {

 this.presentAddress = presentAddress;

 }



 public String getPhoneNumber() {

 return phoneNumber;

 }



 public void setPhoneNumber(String phoneNumber) {

 this.phoneNumber = phoneNumber;

 }



 public String getEmail() {

 return email;

 }



 public void setEmail(String email) {

 this.email = email;

 }



//	public LoginCredentials getLogin() {

// return login;

//	}

//

//	public void setLogin(LoginCredentials login) {

// this.login = login;

//	}



 public CustomerDetails(int customerID, String name, String dob, String gender, String presentAddress,

  String phoneNumber, String email) {

 super();

 this.customerID = customerID;

 this.name = name;

 this.dob = dob;

 this.gender = gender;

 this.presentAddress = presentAddress;

 this.phoneNumber = phoneNumber;

 this.email = email;



 }



 @Override

 public String toString() {

 return "CustomerDetails [customerID=" + customerID + ", name=" + name + ", dob=" + dob + ", gender=" + gender

  + ", presentAddress=" + presentAddress + ", phoneNumber=" + phoneNumber + ", email=" + email + "]";

 }

	

	

	



}

