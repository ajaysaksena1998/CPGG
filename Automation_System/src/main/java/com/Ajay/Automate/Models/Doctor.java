package com.Ajay.Automate.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

@Entity
@Table(name = "doctor")
public class Doctor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;

	@Column(name = "Doctor_Id")
	private int doctorId;

	@Column(name = "Doctor_Name")
	private String doctorname;
	
	@Column(name = "Doctor_Email")
	private String doctoremail;
	
	@Column(name = "Designation")
	private String designation;

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}


	public Doctor(Long id, int doctorId, String doctorname, String doctoremail, String designation) {
		super();
		Id = id;
		this.doctorId = doctorId;
		this.doctorname = doctorname;
		this.doctoremail = doctoremail;
		this.designation = designation;
	}

	@Override
	public String toString() {
		return "Doctor [Id=" + Id + ", doctorId=" + doctorId + ", doctorname=" + doctorname + ", doctoremail="
				+ doctoremail + ", designation=" + designation + "]";
	}

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public String getDoctoremail() {
		return doctoremail;
	}

	public void setDoctoremail(String doctoremail) {
		this.doctoremail = doctoremail;
	}

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

}
