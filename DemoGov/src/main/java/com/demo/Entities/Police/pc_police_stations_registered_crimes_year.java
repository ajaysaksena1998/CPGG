package com.demo.Entities.Police;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class pc_police_stations_registered_crimes_year {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String loc_category;
	private int loc_id;
	private String year;
	private int policestations_rural;
	private int policestations_urban;
	private int policestations_total;
	private int robbery;
	private int murder;
	private int kidnapping;
	private int theft;
	private int riots;
	private int harrassment_of_sc_st;
	private int other_crimes;
	
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
	public int getPolicestations_rural() {
		return policestations_rural;
	}
	public void setPolicestations_rural(int policestations_rural) {
		this.policestations_rural = policestations_rural;
	}
	public int getPolicestations_urban() {
		return policestations_urban;
	}
	public void setPolicestations_urban(int policestations_urban) {
		this.policestations_urban = policestations_urban;
	}
	public int getPolicestations_total() {
		return policestations_total;
	}
	public void setPolicestations_total(int policestations_total) {
		this.policestations_total = policestations_total;
	}
	public int getRobbery() {
		return robbery;
	}
	public void setRobbery(int robbery) {
		this.robbery = robbery;
	}
	public int getMurder() {
		return murder;
	}
	public void setMurder(int murder) {
		this.murder = murder;
	}
	public int getKidnapping() {
		return kidnapping;
	}
	public void setKidnapping(int kidnapping) {
		this.kidnapping = kidnapping;
	}
	public int getTheft() {
		return theft;
	}
	public void setTheft(int theft) {
		this.theft = theft;
	}
	public int getRiots() {
		return riots;
	}
	public void setRiots(int riots) {
		this.riots = riots;
	}
	public int getHarrassment_of_sc_st() {
		return harrassment_of_sc_st;
	}
	public void setHarrassment_of_sc_st(int harrassment_of_sc_st) {
		this.harrassment_of_sc_st = harrassment_of_sc_st;
	}
	@Override
	public String toString() {
		return "pc_police_stations_registered_crimes_year [id=" + id + ", loc_category=" + loc_category + ", loc_id="
				+ loc_id + ", year=" + year + ", policestations_rural=" + policestations_rural
				+ ", policestations_urban=" + policestations_urban + ", policestations_total=" + policestations_total
				+ ", robbery=" + robbery + ", murder=" + murder + ", kidnapping=" + kidnapping + ", theft=" + theft
				+ ", riots=" + riots + ", harrassment_of_sc_st=" + harrassment_of_sc_st + ", other_crimes="
				+ other_crimes + "]";
	}
	public pc_police_stations_registered_crimes_year() {
		super();
		// TODO Auto-generated constructor stub
	}
	public pc_police_stations_registered_crimes_year(Long id, String loc_category, int loc_id, String year,
			int policestations_rural, int policestations_urban, int policestations_total, int robbery, int murder,
			int kidnapping, int theft, int riots, int harrassment_of_sc_st, int other_crimes) {
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
	}
	public String getLoc_category() {
		return loc_category;
	}
	public void setLoc_category(String loc_category) {
		this.loc_category = loc_category;
	}
	public int getOther_crimes() {
		return other_crimes;
	}
	public void setOther_crimes(int other_crimes) {
		this.other_crimes = other_crimes;
	}
}

