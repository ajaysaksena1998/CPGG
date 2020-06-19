package com.demo.Repositories;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.demo.Entities.OtpGen;

public interface OtpRepo extends JpaRepository<OtpGen, Long> {

	@Query("from otp where email=:email")
	OtpGen findByEmail(@Param("email") String email);
	
	@Query("from otp where otp=:otp")
	OtpGen findByOtp(@Param("otp") String otp);
}
