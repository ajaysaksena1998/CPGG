package com.Ajay.Automate.Repository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import com.Ajay.Automate.Models.provideMedicines;

public interface ProvideMedicinesRepository extends JpaRepository<provideMedicines, Long> {

	@Query("from provideMedicines where sapid=:sapid")
	provideMedicines findBysapid(@Param("sapid") int sapid);
}
