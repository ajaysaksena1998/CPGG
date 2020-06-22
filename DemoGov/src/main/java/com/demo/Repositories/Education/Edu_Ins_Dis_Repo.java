package com.demo.Repositories.Education;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.demo.Entities.Education.Education_institution_district;

public interface Edu_Ins_Dis_Repo extends JpaRepository<Education_institution_district, Long> {

	@Query("from education_institution_district where district=:district")
	Education_institution_district findByDistrict(@Param("district") String district);
}
