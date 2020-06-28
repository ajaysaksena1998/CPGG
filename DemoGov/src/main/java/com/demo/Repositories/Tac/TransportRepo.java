package com.demo.Repositories.Tac;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.demo.Entities.Tac.Transport;

public interface TransportRepo extends JpaRepository<Transport, Long> {

	@Query("from transport where year=:year")
	Transport findByYear(@Param("year") String year);
}
