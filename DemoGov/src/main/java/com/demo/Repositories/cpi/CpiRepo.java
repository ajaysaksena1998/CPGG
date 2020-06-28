package com.demo.Repositories.cpi;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.demo.Entities.cpi.District_cpi;

public interface CpiRepo extends JpaRepository<District_cpi, Long> {

	@Query("from district_cpi where district=:district")
	District_cpi findByDistrict(@Param("district") String district);
	
}
