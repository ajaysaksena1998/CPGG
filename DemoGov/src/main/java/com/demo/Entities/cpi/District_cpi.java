package com.demo.Entities.cpi;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="cpi_district")
public class District_cpi {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "loc_category")
	int loc_category;
	
	@Column(name = "loc_id")
	int loc_id;
	
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
	
	@Column(name = "district")
	String district;
	
	@Column(name = "ind")
	double ind;
	
	@Column(name = "approve")
	int approve;
	
	@Transient
	MultipartFile file;
	
	public int getApprove() {
		return approve;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public void setApprove(int approve) {
		this.approve = approve;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	
	
	
	public double getInd() {
		return ind;
	}
	public void setInd(double ind) {
		this.ind = ind;
	}
	
	
	
	public District_cpi(Long id, int loc_category, int loc_id, String district, double ind, int approve,
			MultipartFile file) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		this.district = district;
		this.ind = ind;
		this.approve = approve;
		this.file = file;
	}
	@Override
	public String toString() {
		return "District_cpi [id=" + id + ", loc_category=" + loc_category + ", loc_id=" + loc_id + ", district="
				+ district + ", ind=" + ind + ", approve=" + approve + ", file=" + file + "]";
	}
	public District_cpi() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
