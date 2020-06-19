package com.demo.Repositories.Police;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.Entities.Police.pc_police_stations_registered_crimes_year;

public interface PoliceRepo extends JpaRepository<pc_police_stations_registered_crimes_year, Long> {

}
