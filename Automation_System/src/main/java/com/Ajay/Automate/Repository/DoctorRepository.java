package com.Ajay.Automate.Repository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.Ajay.Automate.Models.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Long> {

	@Query("from Doctor where doctoremail=:doctoremail")
	Doctor findBydoctoremail(@Param("doctoremail") String doctoremail);
}
