package com.demo.Entities.Education;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Education_students_year")
public class Education_students_year {

	public Education_students_year(Long id, int loc_category, int loc_id, String year, int junior_Basic_Schools,
			int senior_Basic_Schools, int senior_Secondary, int degree_Universities) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		Year = year;
		Junior_Basic_Schools = junior_Basic_Schools;
		Senior_Basic_Schools = senior_Basic_Schools;
		Senior_Secondary = senior_Secondary;
		Degree_Universities = degree_Universities;
	}

	@Override
	public String toString() {
		return "Education_students_year [id=" + id + ", loc_category=" + loc_category + ", loc_id=" + loc_id + ", Year="
				+ Year + ", Junior_Basic_Schools=" + Junior_Basic_Schools + ", Senior_Basic_Schools="
				+ Senior_Basic_Schools + ", Senior_Secondary=" + Senior_Secondary + ", Degree_Universities="
				+ Degree_Universities + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "loc_category")
	int loc_category;
	
	@Column(name = "loc_id")
	int loc_id;
	
	@Column(name = "Year")
	String Year;
	
	@Column(name = "Junior_Basic_Schools")
	int Junior_Basic_Schools;
	
	@Column(name = "Senior_Basic_Schools")
	int Senior_Basic_Schools;
	
	@Column(name = "Senior_Secondary")
	int Senior_Secondary;
	
	@Column(name = "Degree_Universities")
	int Degree_Universities;

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

	public int getSenior_Secondary() {
		return Senior_Secondary;
	}

	public void setSenior_Secondary(int senior_Secondary) {
		Senior_Secondary = senior_Secondary;
	}

	public int getDegree_Universities() {
		return Degree_Universities;
	}

	public void setDegree_Universities(int degree_Universities) {
		Degree_Universities = degree_Universities;
	}

	public Education_students_year() {
		super();
		// TODO Auto-generated constructor stub
	}
}
