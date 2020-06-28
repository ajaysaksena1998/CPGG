package com.demo.Repositories.Police;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.demo.Entities.Police.pc_police_stations_registered_crimes_year;

public interface PoliceRepo extends JpaRepository<pc_police_stations_registered_crimes_year, Long> {

	@Query("from pc_police_stations_registered_crimes_year where year=:year")
	pc_police_stations_registered_crimes_year findByYear(@Param("year") String year);
}
