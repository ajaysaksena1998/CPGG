package com.Ajay.Automate.Repository;


import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.Ajay.Automate.Models.Receptionist;

public interface ReceptionistRepository extends JpaRepository<Receptionist, Long> {

	@Query("from Receptionist where receptionistname=:receptionistname")
	Receptionist findByreceptionistname(@Param("receptionistname") String receptionistname);
}
