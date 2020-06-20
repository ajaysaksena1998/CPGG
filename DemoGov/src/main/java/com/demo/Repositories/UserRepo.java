package com.demo.Repositories;

import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.demo.Entities.Registration.User;

public interface UserRepo extends JpaRepository<User, Long> {

	@Query("from user where email=:email")
	User findByEmail(@Param("email") String email);
	
//	@Query("from user where id=:id")
//	Optional<User> findById(@Param("id") Long id);
}
