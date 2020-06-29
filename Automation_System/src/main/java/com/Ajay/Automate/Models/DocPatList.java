package com.Ajay.Automate.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "doctorpatlist")
public class DocPatList {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;

	@Column(name = "Temperature")
	private String temperature;

	@Column(name = "Patient_Id")
	private int sapid;

	@Column(name = "Blood_Pressure")
	private String bloodpressure;

	@Column(name = "Weight")
	private String weight;

	@Column(name = "Chronic_Ailment")
	private String chronicAilment;

	@Column(name = "Doctor")
	private String doctorname;

	@Column(name = "Allergies")
	private String allergies;

	@Column(name = "Patient_Name")
	private String name;

	@Column(name = "Date_And_Time")
	private String dateAndtime;

	public String getDateAndtime() {
		return dateAndtime;
	}

	public void setDateAndtime(String dateAndtime) {
		this.dateAndtime = dateAndtime;
	}

	public DocPatList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DocPatList(Long id, String temperature, int sapid, String bloodpressure, String weight,
			String chronicAilment, String doctorname, String allergies, String name, String dateAndtime) {
		super();
		Id = id;
		this.temperature = temperature;
		this.sapid = sapid;
		this.bloodpressure = bloodpressure;
		this.weight = weight;
		this.chronicAilment = chronicAilment;
		this.doctorname = doctorname;
		this.allergies = allergies;
		this.name = name;
		this.dateAndtime = dateAndtime;
	}

	@Override
	public String toString() {
		return "DocPatList [Id=" + Id + ", temperature=" + temperature + ", sapid=" + sapid + ", bloodpressure="
				+ bloodpressure + ", weight=" + weight + ", chronicAilment=" + chronicAilment + ", doctorname="
				+ doctorname + ", allergies=" + allergies + ", name=" + name + ", dateAndtime=" + dateAndtime + "]";
	}

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSapid() {
		return sapid;
	}

	public void setSapid(int sapid) {
		this.sapid = sapid;
	}

	public String getTemperature() {
		return temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	public String getBloodpressure() {
		return bloodpressure;
	}

	public void setBloodpressure(String bloodpressure) {
		this.bloodpressure = bloodpressure;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getChronicAilment() {
		return chronicAilment;
	}

	public void setChronicAilment(String chronicAilment) {
		this.chronicAilment = chronicAilment;
	}

	public String getAllergies() {
		return allergies;
	}

	public void setAllergies(String allergies) {
		this.allergies = allergies;
	}

}
