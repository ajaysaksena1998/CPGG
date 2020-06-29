package com.Ajay.Automate.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "providemedicines")
public class provideMedicines {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;

	@Column(name = "Patient_Id")
	private int sapid;

	@Column(name = "Patient_Name")
	private String name;

	@Column(name = "Doctor")
	private String doctorname;

	@Column(name = "Medicine")
	private String medicine;

	@Column(name = "Diagnosis")
	private String diagnosis;

	@Column(name = "Date_And_Time")
	private String dateAndtime;

	public int getSapid() {
		return sapid;
	}

	public void setSapid(int sapid) {
		this.sapid = sapid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDoctorname() {
		return doctorname;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public String getMedicine() {
		return medicine;
	}

	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public String getDateAndtime() {
		return dateAndtime;
	}

	public void setDateAndtime(String dateAndtime) {
		this.dateAndtime = dateAndtime;
	}

	public provideMedicines(Long id, int sapid, String name, String doctorname, String medicine, String diagnosis,
			String dateAndtime) {
		super();
		Id = id;
		this.sapid = sapid;
		this.name = name;
		this.doctorname = doctorname;
		this.medicine = medicine;
		this.diagnosis = diagnosis;
		this.dateAndtime = dateAndtime;
	}

	@Override
	public String toString() {
		return "provideMedicines [Id=" + Id + ", sapid=" + sapid + ", name=" + name + ", doctorname=" + doctorname
				+ ", medicine=" + medicine + ", diagnosis=" + diagnosis + ", dateAndtime=" + dateAndtime + "]";
	}

	public provideMedicines() {
		super();
		// TODO Auto-generated constructor stub
	}

}
