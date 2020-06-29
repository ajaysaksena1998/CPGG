package com.Ajay.Automate.Repository;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.Ajay.Automate.Models.DocPatList;

public interface DocPatListRepository extends JpaRepository<DocPatList, Long> {
	
	@Query("from DocPatList where doctorname=:doctorname")
	List<DocPatList> findBydoctorname(@Param("doctorname") String doctorname);
	
	@Query("from DocPatList where sapid=:sapid")
	DocPatList findBysapid(@Param("sapid") int sapid);

}
