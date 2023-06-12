package com.movie.bean;



import java.sql.Time;





import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;

import jakarta.persistence.GenerationType;

import jakarta.persistence.Id;

import jakarta.persistence.OneToOne;



@Entity

public class BookingTable {

	

 @Id

 @GeneratedValue(strategy=GenerationType.AUTO)

 private Integer bookingId;

 private String name;

	

 private String theaterName;

	

 private String movieName;

 private String showTime;

 private int numOfSeats;

 private int price;

 private String userID;

	

	

	

 public String getUserID() {

 return userID;

 }

 public void setUserID(String userID) {

 this.userID = userID;

 }

 public Integer getBookingId() {

 return bookingId;

 }

 public void setBookingId(Integer bookingId) {

 this.bookingId = bookingId;

 }

 public String getName() {

 return name;

 }

 public void setName(String name) {

 this.name = name;

 }



 public String getTheaterName() {

 return this.theaterName;

 }

 public void setTheaterName(String theaterName) {

 this.theaterName = theaterName;

 }

 public String getMovieName() {

 return movieName;

 }

 public void setMovieName(String movieName) {

 this.movieName = movieName;

 }

 public String getShowTime() {

 return showTime;

 }

 public void setShowTime(String showTime) {

 this.showTime = showTime;

 }

 public int getNumOfSeats() {

 return numOfSeats;

 }

 public void setNumOfSeats(int numOfSeats) {

 this.numOfSeats = numOfSeats;

 }

 public int getPrice() {

 return price;

 }

 public void setPrice(int price) {

 this.price = price;

 }

 public BookingTable(Integer bookingId, String name, String theaterName, String movieName, String showTime,

  int numOfSeats, int price,String userID) {

 super();

 this.bookingId = bookingId;

 this.name = name;

 this.theaterName = theaterName;

 this.movieName = movieName;

 this.showTime = showTime;

 this.numOfSeats = numOfSeats;

 this.price = price;

 this.userID=userID;

 }

 public BookingTable() {

 super();

 }

 @Override

 public String toString() {

 return "ShowTable [bookingId=" + bookingId + ", name=" + name + ", threatrid=" + theaterName + ", movieName="

  + movieName + ", showTime=" + showTime + ", numOfSeats=" + numOfSeats + ", price=" + price + "UserId"+userID+"]";

 }

	











}