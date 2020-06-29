package com.Ajay.Automate.Repository;


import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.Ajay.Automate.Models.Medicine;

public interface MedicineRepository extends JpaRepository<Medicine, Long> {

	@Query("from Medicine where medname=:medname")
	Medicine findBymedname(@Param("medname") String medname);
	
	@Query("from Medicine where MONTH(expiryDate) = MONTH(CURRENT_DATE()) AND YEAR(expiryDate) = YEAR(CURRENT_DATE())")
	List<Medicine> getMedicinesByexpiryDate(String a);
}
