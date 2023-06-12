package com.movie.repository;



import org.springframework.data.jpa.repository.JpaRepository;



import com.movie.bean.Admin;



public interface AdminRepository extends JpaRepository<Admin, Integer>{



 Admin findByUsername(String username);

	

}


