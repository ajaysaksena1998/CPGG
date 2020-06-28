package com.demo.Entities.Tac;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name= "tc_motorvehicles_year")
public class Transport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@Column(name = "loc_category")
	int loc_category;
	
	@Column(name = "loc_id")
	int loc_id;
	
	@Column(name = "year")
	String year;
	
	@Column(name = "heavy_vehicles")
	double heavy_vehicles;
	
	@Column(name = "deliver_recovery_van")
	double deliver_recovery_van;
	
	@Column(name = "buses")
	double buses;
	
	@Column(name = "maxi_taxi_cab")
	double maxi_taxi_cab;
	
	@Column(name = "three_wheelers")
	double three_wheelers;
	
	@Column(name = "two_wheelers")
	double two_wheelers;
	
	@Column(name = "four_wheelers")
	double four_wheelers;
	
	@Column(name = "others")
	double others;
	
	@Column(name="total")
	double total;
	
	@Column(name="approve")
	int approve;
	
	@Transient
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

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

	public double getHeavy_vehicles() {
		return heavy_vehicles;
	}

	public void setHeavy_vehicles(double heavy_vehicles) {
		this.heavy_vehicles = heavy_vehicles;
	}

	public double getDeliver_recovery_van() {
		return deliver_recovery_van;
	}

	public void setDeliver_recovery_van(double deliver_recovery_van) {
		this.deliver_recovery_van = deliver_recovery_van;
	}

	public double getBuses() {
		return buses;
	}

	public void setBuses(double buses) {
		this.buses = buses;
	}

	public double getMaxi_taxi_cab() {
		return maxi_taxi_cab;
	}

	public void setMaxi_taxi_cab(double maxi_taxi_cab) {
		this.maxi_taxi_cab = maxi_taxi_cab;
	}

	public double getThree_wheelers() {
		return three_wheelers;
	}

	public void setThree_wheelers(double three_wheelers) {
		this.three_wheelers = three_wheelers;
	}

	public double getTwo_wheelers() {
		return two_wheelers;
	}

	public void setTwo_wheelers(double two_wheelers) {
		this.two_wheelers = two_wheelers;
	}

	public double getFour_wheelers() {
		return four_wheelers;
	}

	public void setFour_wheelers(double four_wheelers) {
		this.four_wheelers = four_wheelers;
	}

	public double getOthers() {
		return others;
	}

	public void setOthers(double others) {
		this.others = others;
	}

	
	public Transport(Long id, int loc_category, int loc_id, String year, double heavy_vehicles,
			double deliver_recovery_van, double buses, double maxi_taxi_cab, double three_wheelers, double two_wheelers,
			double four_wheelers, double others, double total, int approve, MultipartFile file) {
		super();
		this.id = id;
		this.loc_category = loc_category;
		this.loc_id = loc_id;
		this.year = year;
		this.heavy_vehicles = heavy_vehicles;
		this.deliver_recovery_van = deliver_recovery_van;
		this.buses = buses;
		this.maxi_taxi_cab = maxi_taxi_cab;
		this.three_wheelers = three_wheelers;
		this.two_wheelers = two_wheelers;
		this.four_wheelers = four_wheelers;
		this.others = others;
		this.total = total;
		this.approve = approve;
		this.file = file;
	}

	@Override
	public String toString() {
		return "Transport [id=" + id + ", loc_category=" + loc_category + ", loc_id=" + loc_id + ", year=" + year
				+ ", heavy_vehicles=" + heavy_vehicles + ", deliver_recovery_van=" + deliver_recovery_van + ", buses="
				+ buses + ", maxi_taxi_cab=" + maxi_taxi_cab + ", three_wheelers=" + three_wheelers + ", two_wheelers="
				+ two_wheelers + ", four_wheelers=" + four_wheelers + ", others=" + others + ", total=" + total
				+ ", approve=" + approve + ", file=" + file + "]";
	}

	public Transport() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
