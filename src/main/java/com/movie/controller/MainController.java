package com.movie.controller;




import java.util.List;

import java.util.Random;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;



import com.movie.bean.Admin;

import com.movie.bean.BookingTable;

import com.movie.bean.CustomerDetails;

import com.movie.bean.LoginCredentials;

import com.movie.bean.MovieList;

import com.movie.repository.AdminRepository;

import com.movie.repository.BookingTableRepo;

import com.movie.repository.CustomerDetailsRepository;

import com.movie.repository.LoginCredentialsRepository;

import com.movie.service.MovieService;

import com.movie.service.TheatreService;



import jakarta.servlet.http.HttpSession;



@Controller

public class MainController {



 @Autowired

 CustomerDetailsRepository custRepo;



 @Autowired

 LoginCredentialsRepository logRepo;



 @Autowired

 MovieService moviSer;



 @Autowired

 TheatreService theaterServ;



 @Autowired

 BookingTableRepo bookRepo;



 public String user;

 public String adminn;



	

 @Autowired

 AdminRepository adRep;



 // String id;



 @GetMapping("/")

 public String index() {



 return "Home";

 }



 @GetMapping("/home")

 public String indexHome(Model m) {

 m.addAttribute("msg", "Invalid UserName or Password");



 return "Home";

 }



 @GetMapping("/loginPage")

 public String showLoginForm() {

 return "/";

 }



 @PostMapping("/loginPage")

 public String submitLoginForm(@RequestParam String userID, @RequestParam String password, HttpSession session,

  Model m) {

 LoginCredentials log = logRepo.findByUserID(userID);

 Admin ad=adRep.findByUsername(userID);

  

  

 m.addAttribute("msg", "Invalid UserName or Password");



 if (log == null && ad==null ) {

  

  return "redirect:/home";

 }else if(log==null) {

  

  if (!ad.getUsername().equals(userID) || !ad.getAdminPass().equals(password)) {

   

   return "redirect:/home";

  } if (ad.getUsername().equals(userID) && ad.getAdminPass().equals(password)) {

   adminn=userID;

   session.setAttribute("admin", adminn);

   return "redirect:/TheatreTable/List";

  }

   

 }else if(ad==null&&!log.getPassword().equals(password)) {

   return "redirect:/home";

   

  }else

  {user = userID;

  session.setAttribute("userID",userID);



   return "redirect:/movies";

  }

 return "redirect:/home";

 }

  

  

	

	





 @GetMapping("/updatePass")

 public String update(HttpSession session) {

 //	System.out.println(session.getAttribute("userID"));

 // String useri = (String) session.getAttribute("userID");

// LoginCredentials log = logRepo.findByUserID(useri);

// log.setPassword(pass);

// logRepo.save(log);

  if(session.getAttribute("userID")==null) {

  return "redirect:/";

  }

 return "updatePass";

 }

	

 @PostMapping("/updatePass")

 public String Updatedpass(@RequestParam String pass ,Model m,HttpSession session) {

  String useri = (String) session.getAttribute("userID");



 LoginCredentials log = logRepo.findByUserID(useri);

 log.setPassword(pass);

 logRepo.save(log);

 m.addAttribute("msg", "Updated Password Successfully");

 return "updatePass";

 }



 @GetMapping("/register")

 public String register(Model m) {

 m.addAttribute("customer", new CustomerDetails());

 m.addAttribute("lg", new LoginCredentials());



 return "register";

 }



//	@ModelAttribute("lg")

//	public LoginCredentials id(@PathVariable int logid) {

// LoginCredentials ll=new LoginCredentials();

// ll.getId();

// return ll;

 // }

 @RequestMapping("/loginInsert")

 public ModelAndView loginInsert(@ModelAttribute("customer") CustomerDetails customer,

  @ModelAttribute("lg") LoginCredentials lg, @RequestParam String password) {

 ModelAndView mv = new ModelAndView();

 custRepo.save(customer);

 System.out.println("gvgjhg");



 Random random = new Random();

 int randomnum = random.nextInt(9000) + 1000;



 String name = customer.getName();

 String custIdString = name.substring(0, 2).toUpperCase() + randomnum;

 String pass = password;

 lg.setCustomerID(custIdString);

 lg.setPassword(pass);

 lg.setCustomer(customer);



 logRepo.save(lg);

 // id=lg.getCustomerID();

 // mv.setViewName("loginDetails");

 String s = lg.getCustomerID();

 String ss = lg.getPassword();

 mv.addObject("cust", s);

 mv.addObject("pass", ss);

 // mv.setViewName("userLoginDetails");



 System.out.println(lg.getId());

 // return "redirect:userLoginDetails";

 mv.setViewName("userLoginDetails");

 return mv;

 }



 @GetMapping("/userLoginDetails")

 public String loginDetails() {

  



 return "userLoginDetails";// logRepo.findById(id).toString();

 }



 @GetMapping("/movies")

 public String listMovies(Model model,HttpSession session) {

  

  

// if(user==null||session.getAttribute("userID")==null) {

// return "redirect:/";

// }

 // List<MovieList> movie=movieService.listMovies();

 model.addAttribute("movies", moviSer.listMovies());

 return "movies";



 }



 @GetMapping("/movies/{id}")

 public String booktMovie(@PathVariable("id") Integer id,HttpSession session, Model model, BookingTable book) {

  

 if(user==null||session.getAttribute("userID")==null) {

  return "redirect:/";

 }



 model.addAttribute("movie", moviSer.findByMovieId(id));

 model.addAttribute("bookingId", book);

 // List<MovieList> movie=movieService.listMovies();

 /// model.addAttribute("theaters", theaterServ.allTheater());

 return "booking";



 }



 @PostMapping("/movies/{id}")

 public String bookedMovie(@ModelAttribute("bookingId") BookingTable book, HttpSession session,Model model, MovieList movie) {

	



 if(user==null||session.getAttribute("userID")==null) {

  return "redirect:/";

 }

 // model.addAttribute("movie", moviSer.findByMovieId(id));



 // List<MovieList> movie=movieService.listMovies();

 /// model.addAttribute("theaters", theaterServ.allTheater());

 // movie=moviSer.findByMovieId(id);

 // System.out.println(movie.getMovieName());

 bookRepo.save(book);

 book.setMovieName(book.getMovieName());

 book.setTheaterName(book.getTheaterName());

 book.setPrice(book.getPrice() * book.getNumOfSeats());

 book.setUserID(user);

 bookRepo.save(book);



 //List<BookingTable> booki = bookRepo.findAllByUserID(user);

 model.addAttribute("book", "Booked successfully");

 model.addAttribute("booking", book);



 return "creditcard";



 }



 @PostMapping("/myBookings")

 public String myBookings(Model m, BookingTable book,HttpSession session) {

// if(user==null) {

// return "redirect:/";

// }

 if(user==null||session.getAttribute("userID")==null) {

  return "redirect:/";

 }

  

 List<BookingTable> booki = bookRepo.findAllByUserID(user);

 m.addAttribute("book", "Booked successfully!!!");

 m.addAttribute("bookings", booki);

 return "myBookings";

 }

	

 @GetMapping("/myBookings")

 public String myiBookings(Model m, BookingTable book,HttpSession session) {

 if(user==null||session.getAttribute("userID")==null) {

  return "redirect:/";

 }



  

 List<BookingTable> booki = bookRepo.findAllByUserID(user);

 //m.addAttribute("book", "Booked successfully");

 m.addAttribute("bookings", booki);

 return "myBookings";

 }

 @GetMapping("/logout")

 public String logout(HttpSession session) {

 session.invalidate();

// user=null;

// if(session.getAttribute("userID")==null) {

// return "/";

// }

 return "Home";

 }

	





	



 @GetMapping("/allBookings")

 public String allUserBookings(Model m, BookingTable book,HttpSession session) {

 if(session.getAttribute("admin")==null) {

  return "redirect:/";

 }



  

 List<BookingTable> booki = bookRepo.findAll();

 //m.addAttribute("book", "Booked successfully");

 m.addAttribute("bookings", booki);

 return "allBookings";

 }



}

