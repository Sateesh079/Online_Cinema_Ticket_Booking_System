package com.movie.repository;



import java.util.List;



import org.springframework.data.jpa.repository.JpaRepository;



import com.movie.bean.BookingTable;



public interface BookingTableRepo extends JpaRepository<BookingTable, Integer> {



 List<BookingTable> findAllByUserID(String userID);

	

	

}

