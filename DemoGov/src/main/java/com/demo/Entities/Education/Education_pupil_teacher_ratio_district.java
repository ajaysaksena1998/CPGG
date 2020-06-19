package com.demo.Entities.Education;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Education_pupil_teacher_ratio_district")
public class Education_pupil_teacher_ratio_district {
	
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
	
	@Column(name = "Junior_Basic_Schools")
	int Junior_Basic_Schools;
	
	@Column(name = "Senior_Basic_Schools")
	int Senior_Basic_Schools;

	@Override
	public String toString() {
		return "Education_pupil_teacher_ratio_district [id=" + id + ", loc_category=" + loc_category + ", loc_id="
				+ loc_id + ", Year=" + Year + ", district=" + district + ", Junior_Basic_Schools="
				+ Junior_Basic_Schools + ", Senior_Basic_Schools=" + Senior_Basic_Schools + "]";
	}

	public Education_pupil_teacher_ratio_district(Long id, int loc_category, int loc_id, String year, String district,
			int junior_Basic_Schools, int senior_Basic_Schools) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		Year = year;
		this.district = district;
		Junior_Basic_Schools = junior_Basic_Schools;
		Senior_Basic_Schools = senior_Basic_Schools;
	}

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

	public int getJunior_Basic_Schools() {
		return Junior_Basic_Schools;
	}

	public void setJunior_Basic_Schools(int junior_Basic_Schools) {
		Junior_Basic_Schools = junior_Basic_Schools;
	}

	public int getSenior_Basic_Schools() {
		return Senior_Basic_Schools;
	}

	public void setSenior_Basic_Schools(int senior_Basic_Schools) {
		Senior_Basic_Schools = senior_Basic_Schools;
	}

	public Education_pupil_teacher_ratio_district() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
