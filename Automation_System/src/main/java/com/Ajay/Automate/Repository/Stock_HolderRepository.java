package com.Ajay.Automate.Repository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.Ajay.Automate.Models.StockHolders;

public interface Stock_HolderRepository extends JpaRepository<StockHolders, Long> {

	@Query("from StockHolders where username=:username")
	StockHolders findByusername(@Param("username") String username);
}
