package com.demo.Entities.NSS;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.transaction.Transactional;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="nss_netdeposit_district")
public class Nss {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name="loc_category")
	int loc_category;
	
	@Column(name="loc_id")
	int loc_id;
	
	@Column(name="approve")
	int approve;
	
	
	
	
	public int getApprove() {
		return approve;
	}

	public void setApprove(int approve) {
		this.approve = approve;
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

	@Column(name="year")
	String year;
	
	@Column(name="district")
	String district;
	
	@Column(name="net_deposit")
	double net_deposit;
	
	@Transient
	MultipartFile file;
	
	

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public double getNet_deposit() {
		return net_deposit;
	}

	public void setNet_deposit(double net_deposit) {
		this.net_deposit = net_deposit;
	}

	

	public Nss(Long id, int loc_category, int loc_id, int approve, String year, String district, double net_deposit,
			MultipartFile file) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		this.approve = approve;
		this.year = year;
		this.district = district;
		this.net_deposit = net_deposit;
		this.file = file;
	}

	@Override
	public String toString() {
		return "Nss [id=" + id + ", loc_category=" + loc_category + ", loc_id=" + loc_id + ", approve=" + approve
				+ ", year=" + year + ", district=" + district + ", net_deposit=" + net_deposit + ", file=" + file + "]";
	}

	public Nss() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
