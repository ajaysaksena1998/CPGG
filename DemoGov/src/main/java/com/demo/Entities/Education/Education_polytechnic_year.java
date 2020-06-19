package com.demo.Entities.Education;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Education_polytechnic_year")
public class Education_polytechnic_year {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "loc_category")
	int loc_category;
	
	@Column(name = "loc_id")
	int loc_id;
	
	@Column(name = "Year")
	String Year;
	
	@Column(name = "Polytechnic")
	int Polytechnic;
	
	@Column(name = "Industrial_Training_Institutes")
	int Industrial_Training_Institutes;
	
	@Column(name = "Teachers_Training_Institutes")
	int Teachers_Training_Institutes;
	
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

	public int getTeachers_Training_Institutes() {
		return Teachers_Training_Institutes;
	}

	public void setTeachers_Training_Institutes(int teachers_Training_Institutes) {
		Teachers_Training_Institutes = teachers_Training_Institutes;
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
		return "Education_polytechnic_year [id=" + id + ", loc_category=" + loc_category + ", loc_id=" + loc_id
				+ ", Year=" + Year + ", Polytechnic=" + Polytechnic + ", Industrial_Training_Institutes="
				+ Industrial_Training_Institutes + ", Teachers_Training_Institutes=" + Teachers_Training_Institutes
				+ ", Engineering_colleges=" + Engineering_colleges + ", IIT_Roorkee=" + IIT_Roorkee + "]";
	}

	public Education_polytechnic_year(Long id, int loc_category, int loc_id, String year, int polytechnic,
			int industrial_Training_Institutes, int teachers_Training_Institutes, int engineering_colleges,
			int iIT_Roorkee) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		Year = year;
		Polytechnic = polytechnic;
		Industrial_Training_Institutes = industrial_Training_Institutes;
		Teachers_Training_Institutes = teachers_Training_Institutes;
		Engineering_colleges = engineering_colleges;
		IIT_Roorkee = iIT_Roorkee;
	}

	public Education_polytechnic_year() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
