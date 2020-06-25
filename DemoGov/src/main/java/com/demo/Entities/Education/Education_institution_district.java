package com.demo.Entities.Education;

import javax.mail.Multipart;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Education_institution_district")
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
	double junior_Basic_Schools;

	@Column(name = "Senior_Secondary")
	double senior_Secondary;

	@Column(name = "Degree")
	double degree;

	@Column(name = "Universities")
	double universities;

	@Column(name = "Deemed_Universities")
	double deemed_Universities;

	@Column(name = "IIT")
	double iit;

	@Transient
	MultipartFile file;

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

	public double getJunior_Basic_Schools() {
		return junior_Basic_Schools;
	}

	public void setJunior_Basic_Schools(double junior_Basic_Schools) {
		this.junior_Basic_Schools = junior_Basic_Schools;
	}

	public double getSenior_Secondary() {
		return senior_Secondary;
	}

	public void setSenior_Secondary(double senior_Secondary) {
		this.senior_Secondary = senior_Secondary;
	}

	public double getDegree() {
		return degree;
	}

	public void setDegree(double degree) {
		this.degree = degree;
	}

	public double getUniversities() {
		return universities;
	}

	public void setUniversities(double universities) {
		this.universities = universities;
	}

	public double getDeemed_Universities() {
		return deemed_Universities;
	}

	public void setDeemed_Universities(double deemed_Universities) {
		this.deemed_Universities = deemed_Universities;
	}

	public double getIit() {
		return iit;
	}

	public void setIit(double iit) {
		this.iit = iit;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "Education_institution_district [id=" + id + ", loc_category=" + loc_category + ", approve=" + approve
				+ ", loc_id=" + loc_id + ", year=" + year + ", district=" + district + ", junior_Basic_Schools="
				+ junior_Basic_Schools + ", senior_Secondary=" + senior_Secondary + ", degree=" + degree
				+ ", universities=" + universities + ", deemed_Universities=" + deemed_Universities + ", iit=" + iit
				+ ", file=" + file + "]";
	}

	public Education_institution_district(Long id, int loc_category, int approve, int loc_id, String year,
			String district, double junior_Basic_Schools, double senior_Secondary, double degree, double universities,
			double deemed_Universities, double iit, MultipartFile file) {
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
		this.file = file;
	}

	public Education_institution_district() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}