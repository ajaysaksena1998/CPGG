package com.demo.Entities.Education;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Education_institution_district")
public class Education_institution_district {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "loc_category")
	int loc_category;
	int approve;
	public int getApprove() {
		return approve;
	}

	public void setApprove(int approve) {
		this.approve = approve;
	}

	@Column(name = "loc_id")
	int loc_id;
	
	@Column(name = "Year")
	String year;
	
	@Column(name = "district")
	String district;
	
	@Column(name = "Junior_Basic_Schools")
	int junior_Basic_Schools;
	
	@Column(name = "Senior_Secondary")
	int senior_Secondary;
	
	@Column(name = "Degree")
	int degree;
	
	@Column(name = "Universities")
	int universities;
	
	@Column(name = "Deemed_Universities")
	int deemed_Universities;
	
	@Column(name = "IIT")
	int iit;
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
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public int getJunior_Basic_Schools() {
		return junior_Basic_Schools;
	}

	public void setJunior_Basic_Schools(int junior_Basic_Schools) {
		this.junior_Basic_Schools = junior_Basic_Schools;
	}

	public int getSenior_Secondary() {
		return senior_Secondary;
	}

	public void setSenior_Secondary(int senior_Secondary) {
		this.senior_Secondary = senior_Secondary;
	}

	public int getDegree() {
		return degree;
	}

	public void setDegree(int degree) {
		this.degree = degree;
	}

	public int getUniversities() {
		return universities;
	}

	public void setUniversities(int universities) {
		this.universities = universities;
	}

	public int getDeemed_Universities() {
		return deemed_Universities;
	}

	public void setDeemed_Universities(int deemed_Universities) {
		this.deemed_Universities = deemed_Universities;
	}

	public int getIit() {
		return iit;
	}

	public void setIit(int iit) {
		this.iit = iit;
	}

	public Education_institution_district() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Education_institution_district [id=" + id + ", loc_category=" + loc_category + ", approve=" + approve
				+ ", loc_id=" + loc_id + ", year=" + year + ", district=" + district + ", junior_Basic_Schools="
				+ junior_Basic_Schools + ", senior_Secondary=" + senior_Secondary + ", degree=" + degree
				+ ", universities=" + universities + ", deemed_Universities=" + deemed_Universities + ", iit=" + iit
				+ "]";
	}

	public Education_institution_district(Long id, int loc_category, int approve, int loc_id, String year,
			String district, int junior_Basic_Schools, int senior_Secondary, int degree, int universities,
			int deemed_Universities, int iit) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.approve = approve;
		this.loc_id = loc_id;
		this.year = year;
		this.district = district;
		this.junior_Basic_Schools = junior_Basic_Schools;
		this.senior_Secondary = senior_Secondary;
		this.degree = degree;
		this.universities = universities;
		this.deemed_Universities = deemed_Universities;
		this.iit = iit;
	}

	
	
	
}