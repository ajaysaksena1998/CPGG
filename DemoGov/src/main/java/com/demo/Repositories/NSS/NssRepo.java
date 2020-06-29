package com.demo.Repositories.NSS;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.demo.Entities.NSS.Nss;

public interface NssRepo extends JpaRepository<Nss, Long> {

	@Query("from nss where district=:district")
	Nss findByDistrict(@Param("district") String district);
}
