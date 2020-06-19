package com.demo.Entities.Education;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Education_polytechnic_admissions_district")
public class Education_polytechnic_admissions_district {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "loc_category")
	int loc_category;
	
	@Column(name = "loc_id")
	int loc_id;
	
	@Column(name = "Year")
	String Year;
	
	@Column(name = "district")
	String district;
	
	@Column(name = "Polytechnic")
	int Polytechnic;
	
	@Column(name = "Industrial_Training_Institutes")
	int Industrial_Training_Institutes;
	
	@Column(name = "District_Institute_of_Educational_and_Training")
	int District_Institute_of_Educational_and_Training;
	
	@Column(name = "Engineering_colleges")
	int Engineering_colleges;
	
	@Column(name = "IIT_Roorkee")
	int IIT_Roorkee;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getLoc_category() {
		return loc_category;
	}

	public void setLoc_category(int loc_category) {
		this.loc_category = loc_category;
	}

	public int getLoc_id() {
		return loc_id;
	}

	public void setLoc_id(int loc_id) {
		this.loc_id = loc_id;
	}

	public String getYear() {
		return Year;
	}

	public void setYear(String year) {
		Year = year;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public int getPolytechnic() {
		return Polytechnic;
	}

	public void setPolytechnic(int polytechnic) {
		Polytechnic = polytechnic;
	}

	public int getIndustrial_Training_Institutes() {
		return Industrial_Training_Institutes;
	}

	public void setIndustrial_Training_Institutes(int industrial_Training_Institutes) {
		Industrial_Training_Institutes = industrial_Training_Institutes;
	}

	public int getDistrict_Institute_of_Educational_and_Training() {
		return District_Institute_of_Educational_and_Training;
	}

	public void setDistrict_Institute_of_Educational_and_Training(int district_Institute_of_Educational_and_Training) {
		District_Institute_of_Educational_and_Training = district_Institute_of_Educational_and_Training;
	}

	public int getEngineering_colleges() {
		return Engineering_colleges;
	}

	public void setEngineering_colleges(int engineering_colleges) {
		Engineering_colleges = engineering_colleges;
	}

	public int getIIT_Roorkee() {
		return IIT_Roorkee;
	}

	public void setIIT_Roorkee(int iIT_Roorkee) {
		IIT_Roorkee = iIT_Roorkee;
	}

	@Override
	public String toString() {
		return "Education_polytechnic_admissions_district [id=" + id + ", loc_category=" + loc_category + ", loc_id="
				+ loc_id + ", Year=" + Year + ", district=" + district + ", Polytechnic=" + Polytechnic
				+ ", Industrial_Training_Institutes=" + Industrial_Training_Institutes
				+ ", District_Institute_of_Educational_and_Training=" + District_Institute_of_Educational_and_Training
				+ ", Engineering_colleges=" + Engineering_colleges + ", IIT_Roorkee=" + IIT_Roorkee + "]";
	}

	public Education_polytechnic_admissions_district(Long id, int loc_category, int loc_id, String year,
			String district, int polytechnic, int industrial_Training_Institutes,
			int district_Institute_of_Educational_and_Training, int engineering_colleges, int iIT_Roorkee) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		Year = year;
		this.district = district;
		Polytechnic = polytechnic;
		Industrial_Training_Institutes = industrial_Training_Institutes;
		District_Institute_of_Educational_and_Training = district_Institute_of_Educational_and_Training;
		Engineering_colleges = engineering_colleges;
		IIT_Roorkee = iIT_Roorkee;
	}

	public Education_polytechnic_admissions_district() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
