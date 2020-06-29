package com.Ajay.Automate.Repository;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.Ajay.Automate.Models.Patient;

public interface PatientRepository extends JpaRepository<Patient, Long> {

	@Query("from Patient where sapid=:sapid")
	List<Patient> findBysapid(@Param("sapid") int id);
	
	@Query("from Patient where doctorname=:doctorname")
	List<Patient> findBydoctorname(@Param("doctorname") String doctorname);

}
