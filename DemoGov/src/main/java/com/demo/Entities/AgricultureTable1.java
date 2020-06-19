package com.demo.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "agri_apa_sugarcane_district")
public class AgricultureTable1 {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "loc_category")
	int loc_category;
	
	@Column(name="loc_id")
	int loc_id;
	
	@Column(name = "year")
    String year;
	
	@Column(name="district")
    String district;
	
	public AgricultureTable1() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Column(name="area")
    String area;
	
	@Column(name="production")
    String production;
	
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
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getProduction() {
		return production;
	}
	public void setProduction(String production) {
		this.production = production;
	}
	@Override
	public String toString() {
		return "AgricultureTable1 [loc_category=" + loc_category + ", loc_id=" + loc_id + ", year=" + year
				+ ", district=" + district + ", area=" + area + ", production=" + production + "]";
	}
	public AgricultureTable1(int loc_category, int loc_id, String year, String district, String area,
			String production) {
		super();
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		this.year = year;
		this.district = district;
		this.area = area;
		this.production = production;
	}
    
}
