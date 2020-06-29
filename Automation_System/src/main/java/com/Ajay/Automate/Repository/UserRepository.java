package com.Ajay.Automate.Repository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.Ajay.Automate.Models.User;

public interface UserRepository extends JpaRepository<User, Long> {

	@Query("from user where username=:username")
	User findByUsername(@Param("username") String username);
}
