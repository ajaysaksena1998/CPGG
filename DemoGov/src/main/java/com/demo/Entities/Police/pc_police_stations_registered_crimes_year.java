package com.demo.Entities.Police;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="pc_police_stations_registered_crimes_year")
public class pc_police_stations_registered_crimes_year {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private int loc_category;
	private int loc_id;
	private String year;
	private double policestations_rural;
	private double policestations_urban;
	private double policestations_total;
	private double robbery;
	private double murder;
	private double kidnapping;
	private double theft;
	private double riots;
	private double harrassment_of_sc_st;
	private double other_crimes;
	
	@Transient
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	private int approve;
	
	public int getApprove() {
		return approve;
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
	
	public int getLoc_category() {
		return loc_category;
	}
	public void setLoc_category(int loc_category) {
		this.loc_category = loc_category;
	}
	public double getPolicestations_rural() {
		return policestations_rural;
	}
	public void setPolicestations_rural(double policestations_rural) {
		this.policestations_rural = policestations_rural;
	}
	public double getPolicestations_urban() {
		return policestations_urban;
	}
	public void setPolicestations_urban(double policestations_urban) {
		this.policestations_urban = policestations_urban;
	}
	public double getPolicestations_total() {
		return policestations_total;
	}
	public void setPolicestations_total(double policestations_total) {
		this.policestations_total = policestations_total;
	}
	public double getRobbery() {
		return robbery;
	}
	public void setRobbery(double robbery) {
		this.robbery = robbery;
	}
	public double getMurder() {
		return murder;
	}
	public void setMurder(double murder) {
		this.murder = murder;
	}
	public double getKidnapping() {
		return kidnapping;
	}
	public void setKidnapping(double kidnapping) {
		this.kidnapping = kidnapping;
	}
	public double getTheft() {
		return theft;
	}
	public void setTheft(double theft) {
		this.theft = theft;
	}
	public double getRiots() {
		return riots;
	}
	public void setRiots(double riots) {
		this.riots = riots;
	}
	public double getHarrassment_of_sc_st() {
		return harrassment_of_sc_st;
	}
	public void setHarrassment_of_sc_st(double harrassment_of_sc_st) {
		this.harrassment_of_sc_st = harrassment_of_sc_st;
	}
	public pc_police_stations_registered_crimes_year() {
		super();
		// TODO Auto-generated constructor stub
	}
	public pc_police_stations_registered_crimes_year(Long id, int loc_category, int loc_id, String year,
			double policestations_rural, double policestations_urban, double policestations_total, double robbery,
			double murder, double kidnapping, double theft, double riots, double harrassment_of_sc_st,
			double other_crimes, MultipartFile file, int approve) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		this.year = year;
		this.policestations_rural = policestations_rural;
		this.policestations_urban = policestations_urban;
		this.policestations_total = policestations_total;
		this.robbery = robbery;
		this.murder = murder;
		this.kidnapping = kidnapping;
		this.theft = theft;
		this.riots = riots;
		this.harrassment_of_sc_st = harrassment_of_sc_st;
		this.other_crimes = other_crimes;
		this.file = file;
		this.approve = approve;
	}
	@Override
	public String toString() {
		return "pc_police_stations_registered_crimes_year [id=" + id + ", loc_category=" + loc_category + ", loc_id="
				+ loc_id + ", year=" + year + ", policestations_rural=" + policestations_rural
				+ ", policestations_urban=" + policestations_urban + ", policestations_total=" + policestations_total
				+ ", robbery=" + robbery + ", murder=" + murder + ", kidnapping=" + kidnapping + ", theft=" + theft
				+ ", riots=" + riots + ", harrassment_of_sc_st=" + harrassment_of_sc_st + ", other_crimes="
				+ other_crimes + ", file=" + file + ", approve=" + approve + "]";
	}
	public double getOther_crimes() {
		return other_crimes;
	}
	public void setOther_crimes(double other_crimes) {
		this.other_crimes = other_crimes;
	}
	
}

