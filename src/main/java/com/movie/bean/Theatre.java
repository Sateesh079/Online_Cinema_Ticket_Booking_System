package com.movie.bean;



import java.util.List;









import jakarta.persistence.CascadeType;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;

import jakarta.persistence.GenerationType;

import jakarta.persistence.Id;

import jakarta.persistence.JoinColumn;

import jakarta.persistence.OneToMany;

import lombok.AllArgsConstructor;

import lombok.Data;

import lombok.NoArgsConstructor;







@Entity

public class Theatre {

 @Id

 @GeneratedValue(strategy = GenerationType.AUTO)

 @Column(name="theater_Id")

 private Integer theatreId;

 private String thatreName;

 private int theaterCapacity;

 private String city;

	

//	@OneToMany(mappedBy="theater" ,cascade = CascadeType.ALL)

////	@JoinColumn(name="fk_mv_id",referencedColumnName = "theater_Id")

//	private List<MovieList> movie;

	

	

	

	



 public Theatre() {

 super();

 }



 public Theatre(Integer theatreId, String thatreName, int theaterCapacity, String city) {

 super();

 this.theatreId = theatreId;

 this.thatreName = thatreName;

 this.theaterCapacity = theaterCapacity;

 this.city = city;

  

 }



 public Integer getTheatreId() {

 return theatreId;

 }



 public void setTheatreId(Integer theatreId) {

 this.theatreId = theatreId;

 }



 public String getThatreName() {

 return thatreName;

 }



 public void setThatreName(String thatreName) {

 this.thatreName = thatreName;

 }



 public int getTheaterCapacity() {

 return theaterCapacity;

 }



 public void setTheaterCapacity(int theaterCapacity) {

 this.theaterCapacity = theaterCapacity;

 }



 public String getCity() {

 return city;

 }



 public void setCity(String city) {

 this.city = city;

 }







 @Override

 public String toString() {

 return "Theatre [theatreId=" + theatreId + ", thatreName=" + thatreName + ", theaterCapacity=" + theaterCapacity

  + ", city=" + city + "]";

 }

	


}

